Rails.application.routes.draw do
  resources :topics
  resources :posts

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
