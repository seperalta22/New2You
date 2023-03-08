Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'products/new', to: 'products#new', as: 'new_product'
  post 'products', to: 'products#create'
  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/edit', to: 'products#edit', as: 'edit_product'

  # Defines the root path route ("/")
  # root "articles#index"
end
