Rails.application.routes.draw do
  resources :users
  resources :projects
  resources :technologies
  resources :bureaus
  resources :majors
  resources :grades
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
