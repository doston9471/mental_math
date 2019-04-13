Rails.application.routes.draw do
  resources :groups do
    get :numbers
  end

  root to: "groups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
