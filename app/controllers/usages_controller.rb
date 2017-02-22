class UsagesController < ApplicationController
  def index
    @usages = Usage.all

    render("usages/index.html.erb")
  end

  def show
    @usage = Usage.find(params[:id])

    render("usages/show.html.erb")
  end

  def new
    @usage = Usage.new

    render("usages/new.html.erb")
  end

  def create
    @usage = Usage.new

    @usage.favorite_id = params[:favorite_id]
    @usage.date = params[:date]

    save_status = @usage.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/usages/new", "/create_usage"
        redirect_to("/usages")
      else
        redirect_back(:fallback_location => "/", :notice => "Usage created successfully.")
      end
    else
      render("usages/new.html.erb")
    end
  end

  def edit
    @usage = Usage.find(params[:id])

    render("usages/edit.html.erb")
  end

  def update
    @usage = Usage.find(params[:id])

    @usage.favorite_id = params[:favorite_id]
    @usage.date = params[:date]

    save_status = @usage.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/usages/#{@usage.id}/edit", "/update_usage"
        redirect_to("/usages/#{@usage.id}", :notice => "Usage updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Usage updated successfully.")
      end
    else
      render("usages/edit.html.erb")
    end
  end

  def destroy
    @usage = Usage.find(params[:id])

    @usage.destroy

    if URI(request.referer).path == "/usages/#{@usage.id}"
      redirect_to("/", :notice => "Usage deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Usage deleted.")
    end
  end
end
