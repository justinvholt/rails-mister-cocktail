Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: %i[index new create]
  end
  resources :doses, only: %i[show edit update destroy]

  root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
