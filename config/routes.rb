Rails.application.routes.draw do
  root "pages#landing"
  get "/about", to: "pages#about"
  get "/information", to: "pages#information"
  get "/shopcart", to: "pages#shopcart"

  # ADMIN PAGE CONTENT
  get "/admin", to: "pages#admin"
  resources :products
  resources :options

  resource :session
  resources :passwords, param: :token

  get "products/:id/modal", to: "products#modal", as: "product_modal"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"


  # ---------------------------------------------------------------------
  # Shows all the records
  # get "/products", to: "products#index"

  # Renders a form for creating a new record
  # get "/products/new", to: "products#new"
  # Processes the new form submission, handling errors and creating the record
  # post "/products", to: "products#create"

  # Renders a specific record for viewing
  # get "/products/:id", to: "products#show"

  #  Renders a form for updating a specific record
  # get "/products/:id/edit", to: "products#edit"
  # Handles the edit form submission, handling errors and updating the record
  # patch "/products/:id", to: "products#update"
  # put "/products/:id", to: "products#update"

  # Handles deleting a specific record
  # delete "/products/:id", to: "products#destroy"

  # SHORT HAND FOR ALL ABOVE
end
