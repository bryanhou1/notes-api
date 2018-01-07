Rails.application.routes.draw do
  scope '/api' do
		post 'user_token' => 'user_token#create'
		resources 'users', except: [:create, :edit] do
			resources 'posts', except: [:edit, :create]
		end

		resources 'posts', except: :edit
		post 'signup' => 'users#create'
		get 'current_user' => 'users#show_current'
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
