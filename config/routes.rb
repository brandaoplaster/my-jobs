Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :contact_forms, only: [:create]

  resources :portfolios, except: :new do
    resources :blocks, only: [:index, :create, :destroy] do
      resources :additional_informations, only: [:index, :update]
      patch :positions, on: :collection, to: "block_positions#update"
    end
    resources :tags, only: [:create, :destroy], param: :tag_id, controller: :portfolio_tags
    resources :profles, only: [:index, :update]
    resources :experiences, only: [:index, :create, :destroy]
    resources :educations, only: [:index, :create, :destroy]
    resources :skills, only: [:index, :create, :destroy]
    resources :hobbies, only: [:index, :create, :destroy]
    resources :languages, only: [:index, :create, :destroy]
    resources :abouts, only: [:index, :update]
    resources :socials, only: [:index, :create, :destroy]
  end
  
  resources :tags, only: :index
  get '/:slug', to: 'portfolios#show'
end
