require 'resque/server'
require 'api_constraints'

Rails.application.routes.draw do

  mount Resque::Server, :at => "/resque"

  resources :sessions, only: [:create, :destroy]

  # API
  namespace :api, defaults: {format: 'json'}  do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :activities
    end
  end

  # namespace :api, defaults: {format: 'json'} do
  #   scope module: :v1, constraints: ApiConstraints.new(version: 1) do
  #     resources :activities do
  #       collection do
  #         # /api/activities/upload_activites in order to post to the API
  #         post 'upload_activites'
  #       end
  #       # member do
  #       #   get 'events'
  #       # end
  #     end
  #   end
  #   # scope module: :v2, constraints: ApiConstraints.new(version: 2, default: true) do
  #   #   resources :activities
  #   # end
  # end

  # Home
  get   '/',                              to: 'home#index',    as: :home_index
  root                                        'home#index',    as: :root

  get 'auth/:provider/callback',          to: 'sessions#create'
  get 'auth/failure',                     to: redirect('/')
  get 'signout',                          to: 'sessions#destroy', as: 'signout'

  # Users
  get	    "/users",                     to:	"users#index",   as: :users
  get	    "/users/new",                 to:	"users#new",     as: :users_new
  post    "/users",                     to:	"users#create",  as: :users_create
  get	    "/users/:id",                 to:	"users#show",    as: :user_show
  get	    "/users/:id/edit",            to:	"users#edit",    as: :users_edit
  patch	  "/users/:id",                 to:	"users#update",  as: :users_update
  get     "/users/:id/delete",          to: "users#destroy", as: :users_destroy
  delete  "/users/:id",                 to:	"users#destroy", as: :users_delete
  get     "/users/:id/upvote",          to: "users#upvote",  as: :users_upvote

  get   '/users/:id/confirm',             to: 'users#confirm',                                    as: :confirm_user
  get   '/users/:id/deny_admin',          to: 'users#deny_request',                               as: :deny_request
  get   '/users/:id/9847hfh9f824oifnsdlkvhosiehlrisklevishfleh',to: 'users#admin_request'
  get   '/users/:id/4ruoirwnv24vpoifho4ehvjrhg4owihfaoihfaajksdhviuwgifbw4f', to: 'users#become_admin', as: :adminify


  # Friendships
  get 	  "/friendships",                    to:	"friendships#index",   as: :friendship
  get	    "/friendship/new",                 to:	"friendships#new",     as: :friendship_new
  post    "/friendship/create",              to:	"friendships#create",  as: :friendship_create
  get	    "/friendship/:id",                 to:	"friendships#show",    as: :friendship_show
  get	    "/friendship/:id/edit",            to:	"friendships#edit",    as: :friendship_edit
  patch	  "/friendship/:id",                 to:	"friendships#update",  as: :friendship_update
  get     "/friendship/:id/delete",          to: "friendships#destroy", as: :friendship_destroy
  delete  "/friendship/:id",                 to:	"friendships#destroy", as: :friendship_delete
  get     "/friendship/:id/upvote",          to: "friendships#upvote",  as: :friendship_upvote


  # Activities
  get	    "/activities",               to:	"activities#index",   as: :activities
  get	    "/activities/new",           to:	"activities#new",     as: :activity_new
  post    "/activities",               to:	"activities#create",  as: :activity_create

  get     "/activities/query",         to:  "activities#query",   as: :activities_query
  post    "/activities/results",       to:  "activities#results", as: :activities_results

  # to upload my own bulk json
  get     "/activities/init_activities",to:  "activities#init_activities"

  get	    "/activities/:id",           to:	"activities#show",    as: :activity_show
  get	    "/activities/:id/edit",      to:	"activities#edit",    as: :activity_edit
  patch	  "/activities/:id",           to:	"activities#update",  as: :activity_update
  get     "/activities/:id/delete",    to:  "activities#destroy", as: :activity_destroy
  delete  "/activities/:id",           to:	"activities#destroy", as: :activity_delete


  # Events
  get	    "/events",               to:	"events#index",   as: :events
  get	    "/events/new",           to:	"events#new",     as: :event_new
  post    "/events",               to:	"events#create",  as: :event_create

  get     "/events/query",         to:  "events#query",   as: :events_query
  post    "/events/results",       to:  "events#results", as: :events_results

  get	    "/events/:id",           to:	"events#show",    as: :event_show
  get	    "/events/:id/edit",      to:	"events#edit",    as: :event_edit
  patch	  "/events/:id",           to:	"events#update",  as: :event_update
  get     "/events/:id/delete",    to:  "events#destroy", as: :event_destroy
  delete  "/events/:id",           to:	"events#destroy", as: :event_delete


  post  "/events/:id/invites",     to: "invites#createInvites",      as: :event_invite_create

  get   '/notifications/index',    to: "notifications#index",         as: :notifications
  patch '/invites/:id',            to: "invites#update",              as: :invite_update
  patch '/invites/:id',            to: "invites#going",               as: :invite_going
  patch '/invites/:id',            to: "invites#maybe",               as: :invite_maybe
  patch '/invites/:id',            to: "invites#not_going",           as: :invite_not_going

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
