Rails.application.routes.draw do
  get 'register/info1'

  get 'register/info2'
  
  post 'register/infoget'

  root 'home#index'
  
  get 'home/index'

  get 'home/new'

  post 'home/create'

  get 'home/show'
  
  get 'home/share/:id' => 'home#share'

  get 'home/list'

  get 'home/contact/:id' => 'home#contact'

  delete 'home/destroy'

  post 'home/create_contact/:id' => 'home#create_contact'

  post 'home/create_message'

  post 'home/create_comment/:post_id' => 'home#create_comment'

  get 'home/destroy_comment/:comment_id' => 'home#destroy_comment'
  
  get 'home/board'

  post 'home/post_success/:id' => 'home#post_success'
  
  post 'home/post_fail/:id' => 'home#post_fail'

  get 'home/new_board'
  
  post 'home/create_board'
  
  delete 'home/destroy_board'
  
  get 'home/show_board/:board_id' => 'home#show_board'

  get 'home/pay'
  
  get 'home/introduction'
  
  get 'home/admin'
  
  get 'home/check_pay/:contact_id' => 'home#check_pay'
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}
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
