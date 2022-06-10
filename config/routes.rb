Rails.application.routes.draw do
  resources :applications
  resources :acadamic_years
  resources :acadamic_programs
  resources :acadamic_announcements
  resources :program_types
  resources :programs
  resources :program_levels
  resources :applicants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "acadamic_announcements#index"
end
