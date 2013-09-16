Card::Application.routes.draw do
  root 'card#index'
  get '/card/email', to: 'card#email'
  get '/card/sms', to: 'card#sms'
end
