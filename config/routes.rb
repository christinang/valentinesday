Rails.application.routes.draw do

  get "/", :controller => "reasons", :action => "intro"

  # Routes for the Reason resource:
  # CREATE
  get "/reasons/new", :controller => "reasons", :action => "new"
  post "/create_reason", :controller => "reasons", :action => "create"

  # READ
  get "/reasons", :controller => "reasons", :action => "index"
  get "/reasons/:id", :controller => "reasons", :action => "show"

  # UPDATE
  get "/reasons/:id/edit", :controller => "reasons", :action => "edit"
  post "/update_reason/:id", :controller => "reasons", :action => "update"

  # DELETE
  get "/delete_reason/:id", :controller => "reasons", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
