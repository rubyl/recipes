class RecipeStepsController < ApplicationController
  before_action :set_recipe
  before_action :set_recipe_step, only: [:show, :update, :destroy]
  before_action :authenticate_request

  # GET /recipes/:recipe_id/recipe_steps
  def index
    get_list(@recipe.recipe_steps, params)
  end

  # GET /recipes/:recipe_id/recipe_steps/:id
  def show
    get_data(@recipe_step)
  end

  # POST /recipes/:recipe_id/recipe_steps
  def create
    create_data(@recipe.recipe_steps, recipe_step_params)
  end

  # PUT /recipes/:recipe_id/recipe_steps/:id
  def update
    update_data(@recipe_step, recipe_step_params)
  end

  # DELETE /recipes/:recipe_id/recipe_steps/:id
  def destroy
    delete_data(@recipe_step)
  end

  private

  def recipe_step_params
    params.permit(:title, :description, :order)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_recipe_step
    @recipe_step = RecipeStep.find(params[:id])
  end
end
