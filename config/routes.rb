Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resource :portfolios, except: :new do
    resource :tags, only: [:create, destroy], param: :tag_id, controller: :portfolio_tags
  end
  resource :tags, only: :index
end
