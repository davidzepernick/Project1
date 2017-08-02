Rails.application.routes.draw do
  
  root 'pages#home'
  
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact 
  

  resources :articles do
    resources :comments
  end
  
  get 'welcome/index'
  root 'welcome#index' 
end
