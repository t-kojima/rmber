Rails.application.routes.draw do
  resources :devices do
    collection do
      get 'search'
    end
  end
  resources :network_interfaces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
