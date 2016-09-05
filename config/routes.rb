Rails.application.routes.draw do
  get '/blog/:id', to: 'blog#show'
  get '/blog', to: 'blog#index'
  get '/', to: 'page#index', as: 'index'
  get '/contact', to: 'page#contact'
  get '/roadmap', to: 'page#roadmap'
  get '/team', to: 'page#team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
