Rails.application.routes.draw do
  resources :leases, only: [:index, :create, :destroy]
  resources :tenants
  resources :apartments
end
