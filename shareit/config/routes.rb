Shareit::Application.routes.draw do
  
  # devise_for :user_data
    # root :to => 'user_data#home'
#   
  # resources :user_data
  
  
  
  get "following/new"
  get "following/index"
  get "following/create"
  get "following/destroy"
  
  
  
  get "follower/new"
  get "follower/create"
  get "follower/update"
  get "follower/edit"
  get "follower/destroy"
  get "follower/show"
  get "follower/index"

  
  get "post/home"
  get "post/new"
  get "post/edit/:id" => 'post#edit'
  get "post/create"
  get "post/update"
  get "post/destroy"
  get "post" => 'post#index', :as => "post_index"
  get "post/:id" => 'post#show', :as => 'post_show'
  
  get "session/new", :as => 'login'
  get "session/create"
  get "session/edit"
  get "session/update"
  
  get "user_data/home"
  get "/signup" => "user_data#new", :as => 'signup'
  get "ank/edit" => "user_data#edit", :as => 'user_edit'
  get "user_data/create"
  get "user_data/update"
  get "user_data/destroy"
  get "ank/" => "user_data#index", :as => 'user_home'
  get "ank/" => "user_data#show" 

  
   
  post "/signup" => 'user_data#create'
  post "session/new" => 'session#create'
  post "post/new" => 'post#create'
  post "post/edit/:id" => 'post#update'
  post "ank/edit" => 'user_data#update'
  post "follower/new" => 'follower#create'
  
  
  
  
  
  
  
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
