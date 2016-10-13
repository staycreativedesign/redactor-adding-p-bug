Rails.application.routes.draw do
  root 'pages#index'

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  namespace  :admin do
    get "/panel", to: 'panel#index'
    resources :users
    resources :business, only: [:index, :edit, :update]
    resources :pages do
      resources :subcategories
    end
  end

  # match '/:id', to: 'pages#show', via: [:get], as: 'short_path'
  # match '/:page_id/:id', to: 'subcategories#show', via: [:get], as: 'page_subcategory'

end
