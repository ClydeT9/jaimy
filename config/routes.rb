Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :leads
    end
  end

  resources :leads
  scope '/hooks', :controller => :hooks do
      post '/', to: 'hooks#lead_created_callback' 
  end
end