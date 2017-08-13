Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions',
                                    passwords: 'users/passwords',
                                    registrations: 'users/registrations' }
  root 'static_pages#home'
  get 'static_pages/features', '/features'
  get 'static_pages/about', '/about'
  get 'static_pages/contact', '/contact'
  get 'app_dashboard/home', '/home'
end
