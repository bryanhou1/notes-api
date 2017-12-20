class UsersController < ApplicationController
	# before_action :authenticate_user, except: :create

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def index
		@users = User.all
		render json: @users
	end

	def destroy
		@user = User.find(params[:id])
    @user.destroy
    render json: { head :no_content }
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			render json: @user, status: 200
		else
			render json: { errors: @user.errors.full_messages }, status: 422
		end
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user, status: 201
		else
			render json: { errors: @user.errors.full_messages }, status: 422
		end
	end

	private

	def user_params
		params.permit(:name, :username, :email, :password)
	end

end