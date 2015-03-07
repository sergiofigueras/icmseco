Rails.application.routes.draw do

  devise_for :usuarios
  resources :usuarios

  resources :documentos do
    resources :arquivos
  end

  resources :acoes
  resources :notificacoes

  post '/notificacoes/ack/:id' => 'notificacoes#ack', as: 'ack'
  get '/arquivos/avaliacao'
  get '/arquivos/todos'
  get '/acoes/visualizar/:tipo' => 'acoes#visualizar', as: 'visualizar'


  root 'inicio#index'
end
