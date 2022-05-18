Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :warehouses, only: [:new, :create, :index] do
    resources :categories
  end

  resources :categories do
    resources :products
  end
end
