Rails.application.routes.draw do
  # get 'numbers/index'
  root 'numbers#index'
  post '/' => 'numbers#guess'
  post '/reset' => 'numbers#reset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
