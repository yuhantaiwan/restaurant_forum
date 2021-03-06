Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index" # 首頁指向 RestaurantsController 的 index action

  namespace :admin do
    resources :restaurants   # resources 會產生一組 URL Helper 和網址，並對應到不同的 Action。
    root "restaurants#index"  # 建立後台路由
  end
end
