Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :student
  resources :leaves
  root to: "welcome#show"
end
