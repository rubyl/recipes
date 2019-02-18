Rails.application.routes.draw do
  resources :users do
    resources :recipes
  end

  resources :recipes do
    resources :recipe_steps
  end

  post 'authenticate', to: 'authentication#authenticate'
end
