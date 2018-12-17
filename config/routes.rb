Rails.application.routes.draw do
  root to:'home#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get "/admin", to: "admin#index",as: "admin"
   get "/admin/delete_tag", to: "admin#delete_tag", as:"delete_tag"
   post "/urls/add_tag", to: "urls#add_tag", as:"add_tag"
   post "/search", to: "home#search"
   get "/search/result",to:"home#search_result",as:"search_result"
   resources :urls
   resources :tags
   
end
