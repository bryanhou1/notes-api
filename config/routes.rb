Rails.application.routes.draw do
  scope '/api' do
		post 'user_token' => 'user_token#create'

    get 'current_user' => 'users#show_current'
    post 'signup' => 'users#create'

		resources 'users', only: [:destroy, :update]
		resources 'notes', only: [:index, :create, :update, :destroy]

  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
