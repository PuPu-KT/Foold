Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users

  resources :restaurants do
    resources :reviews, except: [:index, :show]
    collection do
       get 'search'
     end
  end

  root 'restaurants#index'



end
