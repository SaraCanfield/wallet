Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  root "home#index"
  get '/'  => "home#index"
    
    # get "users/sign_in" => "sessions#new"
    # post  "users/sign_in" => "sessions#create"
    # get "users/sign_out" => "sessions#destroy"

    resources :users do
      resources :cards
    end

    resources :cardusers

#             Prefix Verb   URI Pattern                              Controller#Action
#           root GET    /                                        home#index
#                GET    /                                        home#index
#  users_sign_in GET    /users/sign_in(.:format)                 sessions#new
#                POST   /users/sign_in(.:format)                 sessions#create
# users_sign_out GET    /users/sign_out(.:format)                sessions#destroy
#     user_cards GET    /users/:user_id/cards(.:format)          cards#index
#                POST   /users/:user_id/cards(.:format)          cards#create
#  new_user_card GET    /users/:user_id/cards/new(.:format)      cards#new
# edit_user_card GET    /users/:user_id/cards/:id/edit(.:format) cards#edit
#      user_card GET    /users/:user_id/cards/:id(.:format)      cards#show
#                PATCH  /users/:user_id/cards/:id(.:format)      cards#update
#                PUT    /users/:user_id/cards/:id(.:format)      cards#update
#                DELETE /users/:user_id/cards/:id(.:format)      cards#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PATCH  /users/:id(.:format)                     users#update
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#      cardusers GET    /cardusers(.:format)                     cardusers#index
#                POST   /cardusers(.:format)                     cardusers#create
#   new_carduser GET    /cardusers/new(.:format)                 cardusers#new
#  edit_carduser GET    /cardusers/:id/edit(.:format)            cardusers#edit
#       carduser GET    /cardusers/:id(.:format)                 cardusers#show
#                PATCH  /cardusers/:id(.:format)                 cardusers#update
#                PUT    /cardusers/:id(.:format)                 cardusers#update
#                DELETE /cardusers/:id(.:format)                 cardusers#destroy



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
