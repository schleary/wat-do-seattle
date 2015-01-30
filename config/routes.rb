Rails.application.routes.draw do

  # Home
  get   '/',                            to: 'home#index',    as: :home_index
  root                                      'home#index',    as: :root

  get     '/auth/:provider/callback',   to: 'sessions#create'
  # get   '/auth/:provider',              to: 'sessions#new',  as: :sign_in
  # get   '/auth/:provider/google_oauth2',to: 'users#new',     as: :sign_in
  # get   '/auth/callback',               to: 'users#create',  as: :google_callback
  # post  '/auth/callback',               to: 'users#create'

  # Users
  get	    "/users",                     to:	"users#index",   as: :users
  get	    "/users/new",                 to:	"users#new",     as: :users_new
  post    "/users",                     to:	"users#create",  as: :users_create
  get	    "/users/:id",                 to:	"users#show",    as: :users_show
  get	    "/users/:id/edit",            to:	"users#edit",    as: :users_edit
  patch	  "/users/:id",                 to:	"users#update",  as: :users_update
  get     "/users/:id/delete",          to: "users#destroy", as: :users_destroy
  delete  "/users/:id",                 to:	"users#destroy", as: :users_delete
  get     "/users/:id/upvote",          to: "users#upvote",  as: :users_upvote


  # Activities
  get	    "/activities",               to:	"activities#index",   as: :activities
  get	    "/activities/new",           to:	"activities#new",     as: :activity_new
  post    "/activities",               to:	"activities#create",  as: :activity_create
  get	    "/activities/:id",           to:	"activities#show",    as: :activity_show
  get	    "/activities/:id/edit",      to:	"activities#edit",    as: :activity_edit
  patch	  "/activities/:id",           to:	"activities#update",  as: :activity_update
  get     "/activities/:id/delete",    to:  "activities#destroy", as: :activity_destroy
  delete  "/activities/:id",           to:	"activities#destroy", as: :activity_delete

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
