Rails.application.routes.draw do
  root to: 'pages#home'
  get '/welcome/:name', to: 'pages#welcome', as: 'welcome'
  get '/team', to: 'pages#team', as: 'team'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/gossips/:id', to: 'pages#gossips', as: 'gossips'
end
