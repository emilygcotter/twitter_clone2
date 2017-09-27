Rails.application.routes.draw do

	get 'tags/:id' => 'tweets#show_tagged_tweets'

	get 'users/:id/show' => 'users#show', as: 'user'

	post 'users/follow' => 'users#follow', as: 'follow_user'

	devise_for :users
	root 'tweets#index'

	resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
