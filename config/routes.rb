Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get '/user_form' => "users#new"
 post '/create' => "users#create"
end
