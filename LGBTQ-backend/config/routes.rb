Rails.application.routes.draw do
  #root 'static#index'
  #namespace :api, defaults: {format: 'json'} do
  #  get 'users', to: 'users#index'
  #  get 'meetups', to: 'meetups#index'
  #  get 'categories', to: 'categories#index'
  #  post 'meetups', to: 'meetups#create'
  #end



  scope '/api' do
    resources :users, :categories, :meetups
    get 'users', to: 'users#index'
    get 'meetups', to: 'meetups#index'
    get 'categories', to: 'categories#index'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
