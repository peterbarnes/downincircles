Rails.application.routes.draw do
  root 'static_pages#index'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/music',   to: 'static_pages#music',   via: 'get'
  post 'send' =>        'static_pages#sendit'
end
