Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { sessions: 'users/sessions',
                                    passwords: 'users/passwords',
                                    registrations: 'users/registrations' }
  root 'static_pages#home'
  get '/features' => 'static_pages#features'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  
  get '/app' => 'app_dashboard#home'
  get '/app/summary' => 'app_dashboard#home'
  get '/app/mutualpools' => 'app_dashboard#mutualpools'
  get 'app/friends' => 'app_dashboard#friends'
  get 'app/stats' => 'app_dashboard#stats'
  get 'app/messages' => 'app_dashboard#messages'
  get 'app/documents' => 'app_dashboard#documents'
  
  get '/app/profile' => 'app_dashboard#profile'
  get '/app/settings' => 'app_dashboard#settings'
  get '/app/help' => 'app_dashboard#help'
end
