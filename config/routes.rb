Attorney::Application.routes.draw do
  
 
   root  'static_pages#home'
   match '/law',   to: 'static_pages#law',   via: 'get'
   match '/contact', to: 'static_pages#contact', via: 'get'  
   match '/university', to: 'static_pages#university', via: 'get' 
  
   match 'base', to: 'reference_pages#base', via: 'get'
   match 'work', to: 'reference_pages#work', via: 'get'
   match 'office', to: 'reference_pages#office', via: 'get'
   
   match 'officea', to: 'introduction_pages#officea', via: 'get'
   match 'officeb', to: 'introduction_pages#officeb', via: 'get'
   match 'basea', to: 'introduction_pages#basea', via: 'get'
   match 'baseb', to: 'introduction_pages#baseb', via: 'get'
   match 'worka', to: 'introduction_pages#worka', via: 'get'

   
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
