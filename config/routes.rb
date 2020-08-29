Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #post 'contact', to: 'contacts#process_form'
  
  ### YOU CAN USE...
  #get  'contact', to: 'contacts#new'
  #post 'contact', to: 'contacts#create'
  ### OR
  resources :contacts, only: [:new, :create]



  root to: 'visitors#new'

end
