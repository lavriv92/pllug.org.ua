Rails.application.routes.draw do
  get '/' => 'page#index'
  get '/contact' => 'page#contact'
  get '/roadmap' => 'page#roadmap'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
