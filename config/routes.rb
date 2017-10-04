Rails.application.routes.draw do
  post 'orders/user', to: 'orders#get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
