Rails.application.routes.draw do
  get 'tags/:tag', to: 'documents#index', as: :tag
  resources :documents
  

end


