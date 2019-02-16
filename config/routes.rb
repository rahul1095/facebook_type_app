Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

root :to => "posts#index"
  resources :posts do
    resources :comments
    resources :likes
	 resources :comments do
    resources :replies
 end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
