PixelflowBlog::Application.routes.draw do
  resources :blog_posts

  get 'login', to: 'sessions#login'
  get 'portfolio', to: 'portfolio#index'

  root to: 'portfolio#index'
end
