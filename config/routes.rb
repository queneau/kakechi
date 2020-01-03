Rails.application.routes.draw do
  root 'top#index'
  get 'top' => 'top#index'
  get 'moneyrecord/new' => 'moneyrecord#new'
  get 'moneyrecord' => 'moneyrecord#index'
  post 'moneyrecord/new' => 'moneyrecord#create'
  get "moneyrecord/:id" => "moneyrecord#show"
  patch 'moneyrecord/:id' => 'moneyrecord#edit'
  delete 'moneyrecord/:id' => 'moneyrecord#destroy'
end
