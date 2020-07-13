Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'profiles#index'
  resources :profiles
  resources :skills
  resources :certifications
  namespace 'api' do
    namespace 'v1' do
      resources :profiles
    end
  end
end
