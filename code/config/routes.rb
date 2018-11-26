Rails.application.routes.draw do
  get '/search' => 'pages#search', :as => 'search_page'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles
  root 'welcome#index'
end
