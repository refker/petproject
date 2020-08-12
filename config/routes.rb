Rails.application.routes.draw do
  root to: 'main#root'
  post '/', to: 'main#update'
  get 'iframe', to: 'main#iframe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
