class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  before_action :authenticate_request

  # GET /user/:user_id/recipes & /recipes
  def index
    if !params[:user_id]
      get_list(Recipe, params)
    else
      set_user
      get_list(@user.recipes, params)
    end
  end

  # GET /user/:user_id/recipes/:id & /recipes/:id
  def show
    get_data(@recipe)
  end

  # POST /user/:user_id/recipes
  def create
    set_user
    create_data(@user.recipes, recipe_params)
  end

  # PUT /user/:user_id/recipes/:id
  def update
    update_data(@recipe, recipe_params)
  end

  # DELETE /user/:user_id/recipes/:id
  def destroy
    delete_data(@recipe)
  end

  private

  def recipe_params
    params.permit(:title, :description)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
