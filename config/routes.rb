Rails.application.routes.draw do
  get 'ruby_project/index'
  # get 'post_dog/posts'
  # get 'users/register'
  root 'home#index'
  

  match'/index',:to=>'home#index',:via=>:get

  match'/register', :to=> 'users#register',:via=>:get

  match'/login',:to=>'users#login',:via=>:get

  match'/aboutus',:to=>'home#aboutus',:via=>:get

  match 'users/create', to: 'users#create', :via=> :post

  match 'user/login', to: 'sessions#login', :via=> :post
  
  # match 'posts', to: 'post_dog#posts', :via=> :get
  get '/posts', to: 'post_dog#posts'

  match 'list', to: 'post_dog#list', :via=> :get

  match '/add_animals', to: 'post_dog#add_animals', :via=> :post

  match '/add_user', to: 'post_dog#add_user', :via=> :post
get 'post_dog/dummy'
get 'post_dog/show/:id', to: 'post_dog#show'
match '/search', to: 'post_dog#search', via: :get 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
