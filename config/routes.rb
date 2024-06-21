Rails.application.routes.draw do
  devise_for :users
  root 'employees#index'

  resources :employees
  resources :documents

  get 'pages/about_us'
  get 'pages/contect_us'
  get 'pages/privacy'
  get 'pages/term_conditions'

end
