Rails.application.routes.draw do
  resources :posts
  resources :topics do 

    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
