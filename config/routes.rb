Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create]
  get 'articles/new'
  resources :articles do
    resources :comments
  end
end



