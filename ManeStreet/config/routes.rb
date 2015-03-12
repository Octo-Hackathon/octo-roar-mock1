Rails.application.routes.draw do
  resources :usertypes, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  resources :opportunities, except: [:new, :edit]
  post 'government', to: 'opportunities#create', path: '/api/government/opportunities'
  get 'government', to: 'opportunities#index', path: '/api/government/opportunities'
  get 'government', to: 'opportunities#show', path: '/api/government/opportunities/:id'
  delete 'government', to: 'opportunities#destroy', path: '/api/government/opportunities/:id'
  get 'government', to: 'opportunities#searchDaysGov', path: '/api/government/opportunities/searchDays/:id'
  get 'government', to: 'opportunities#searchByGov', path: '/api/government/search/opportunities'
  get 'government', to: 'opportunities#publish', path: '/api/government/opportunities/publish/:id'
  get 'contractor', to: 'opportunities#listCon', path: '/api/contractor/opportunities'
  get 'contractor', to: 'opportunities#searchByCon', path: '/api/contractor/search/opportunities'
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
