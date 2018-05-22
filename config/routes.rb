Rails.application.routes.draw do
  
  resources :pages do
    resources :rows
  end
  
end
