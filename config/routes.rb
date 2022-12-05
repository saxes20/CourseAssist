Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "articles#index"

  get "/articles", to: "articles#index"
  #get "/user", to: "user#index"
  resource :users
  resource :addcourses
  resource :dashboards
  resource :courses
  get "/addcourses", to: "addcourses#index"

  # put "/dashboards/:id", to: 'dashboards#add', as: "add"

end
