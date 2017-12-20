class UserController < ApplicationController
	# before_action :authenticate_user, except: :create

	def show
	end

	def index
	end

	def destroy
	end

	def update
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user, serializer: UserSerializer, status: 201
		else
			render json: { errors: user.errors.full_messages }, status: 422
		end

	end

	private

	def user_params
		params.permit(:name, :username, :email, :password)
	end

end