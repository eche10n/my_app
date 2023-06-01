Rails.application.routes.draw do
  #get 'work/index'
  #get 'work/choose_theme'
  #get 'work/display_theme'
  #get 'work/_button_theme_select'
  #get 'work/_choose_theme_from_arr'
  resources :themes
  resources :images
  resources :values
  resources :users
  resources :sessions, only:[:new, :create, :destroy]
  # get 'shared/_header'
  # get 'shared/_footer'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'main#index'

  # work
  match 'work', to: 'work#index', via: 'get'
  match 'choose_theme', to: 'work#choose_theme', via: 'get'
  match 'display_theme', to: 'work#display_theme', via: 'post'

  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'get'

  # api
  #match 'api/next_image', to: 'api#next_image', via: 'get'
  #get :next_image, controller:"api/api"
  #get :prev_image, controller:"api/api"
  namespace :api, defaults: { format: :json } do

    match 'next_image',       to: 'api#next_image',   via: 'get'
    match 'prev_image',       to: 'api#prev_image',   via: 'get'
    match 'save_value',       to: 'api#save_value',   via: :get

  end

  match 'save_value', to: 'api/api#save_value',   via: :get
end
