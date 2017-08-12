Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/features', '/features'
  get 'static_pages/about', '/about'
  get 'static_pages/contact', '/contact'
end
