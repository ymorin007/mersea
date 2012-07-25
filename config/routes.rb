Mersea::Application.routes.draw do
  devise_for :users

  scope "/:locale" do
    resources :guests
  end  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'guests#index'
  
  resources :events

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match 'events' => 'events#create', :as => 'events', :via => :post

  match ':controller(/:action(/:id))(.:format)'

  #match '/guests/multimedia', :controller => 'guests', :action => 'multimedia'
  
  match 'multimedia' => 'guests#multimedia', :as => :multimedia
  match 'included' => 'guests#included', :as => :included
  match 'pricing' => 'guests#pricing', :as => :pricing
  match 'aboutus' => 'guests#aboutus', :as => :aboutus
  match 'aboutstmaarten' => 'guests#aboutstmaarten', :as => :stmaarten
  match 'availabilities' => 'calendar#index', :as => :availabilities
  match 'contactus' => 'contact#new', :as => :contactus
  match 'reservation' => 'events#index', :as => :reservation
  
 
end
