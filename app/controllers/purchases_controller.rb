class PurchasesController < ApplicationController
  def index
    @q = Purchase.ransack(params[:q])
    @purchases = @q.result(:distinct => true).includes(:product, :user, :uses).page(params[:page]).per(10)

    render("purchases/index.html.erb")
  end

  def show
    @use = Use.new
    @purchase = Purchase.find(params[:id])

    render("purchases/show.html.erb")
  end

  def new
    @purchase = Purchase.new

    render("purchases/new.html.erb")
  end

  def create
    @purchase = Purchase.new

    @purchase.product_id = params[:product_id]
    @purchase.user_id = params[:user_id]
    @purchase.rating = params[:rating]
    @purchase.note = params[:note]
    @purchase.open_date = params[:open_date]

    save_status = @purchase.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/purchases/new", "/create_purchase"
        redirect_to("/purchases")
      else
        redirect_back(:fallback_location => "/", :notice => "Purchase created successfully.")
      end
    else
      render("purchases/new.html.erb")
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])

    render("purchases/edit.html.erb")
  end

  def update
    @purchase = Purchase.find(params[:id])

    @purchase.product_id = params[:product_id]
    @purchase.user_id = params[:user_id]
    @purchase.rating = params[:rating]
    @purchase.note = params[:note]
    @purchase.open_date = params[:open_date]

    save_status = @purchase.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/purchases/#{@purchase.id}/edit", "/update_purchase"
        redirect_to("/purchases/#{@purchase.id}", :notice => "Purchase updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Purchase updated successfully.")
      end
    else
      render("purchases/edit.html.erb")
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])

    @purchase.destroy

    if URI(request.referer).path == "/purchases/#{@purchase.id}"
      redirect_to("/", :notice => "Purchase deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Purchase deleted.")
    end
  end
end
