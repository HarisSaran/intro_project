Rails.application.routes.draw do
  get 'home/index'
  # get 'games/index'
  # get 'games/show'
  # get 'publisher_companies/index'
  # get 'publisher_companies/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # to populate the games index with info go to games controler INDEX!
  resources :games, only: %i[index show]

  resources :publisher_companies, only: %i[index show]
end
