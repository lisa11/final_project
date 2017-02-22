Rails.application.routes.draw do
  root :to => "products#index"
  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Usage resource:
  # CREATE
  get "/usages/new", :controller => "usages", :action => "new"
  post "/create_usage", :controller => "usages", :action => "create"

  # READ
  get "/usages", :controller => "usages", :action => "index"
  get "/usages/:id", :controller => "usages", :action => "show"

  # UPDATE
  get "/usages/:id/edit", :controller => "usages", :action => "edit"
  post "/update_usage/:id", :controller => "usages", :action => "update"

  # DELETE
  get "/delete_usage/:id", :controller => "usages", :action => "destroy"
  #------------------------------

  # Routes for the Brand resource:
  # CREATE
  get "/brands/new", :controller => "brands", :action => "new"
  post "/create_brand", :controller => "brands", :action => "create"

  # READ
  get "/brands", :controller => "brands", :action => "index"
  get "/brands/:id", :controller => "brands", :action => "show"

  # UPDATE
  get "/brands/:id/edit", :controller => "brands", :action => "edit"
  post "/update_brand/:id", :controller => "brands", :action => "update"

  # DELETE
  get "/delete_brand/:id", :controller => "brands", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
