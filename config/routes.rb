Rails.application.routes.draw do

  devise_for :users
  resources :plays do
    # 'reviews' nested inside 'plays' bc 'reviews' routes come after 'plays'
    resources :reviews
  end
  root 'plays#index'

end
