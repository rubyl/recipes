class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_request, only: [:index, :show, :update, :destroy]

  # GET /users
  def index
    get_list(User, params)
  end

  # POST /users
  def create
    create_data(User, user_params)
  end

  # GET /users/:id
  def show
    get_data(@user)
  end

  # PUT /users/:id
  def update
    update_data(@user, user_params)
  end

  # DELETE /users/:id
  def destroy
    delete_data(@user)
  end

  private

  def user_params
    params.permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
