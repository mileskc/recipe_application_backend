class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all.reverse

    render json: @recipes
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  # def update
  #   if @recipe.update(recipe_params)
  #     render json: @recipe
  #   else
  #     render json: @recipe.errors, status: :unprocessable_entity
  #   end
  # end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    render json: { recipe: recipe }
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:name, :author, :img, :description, :prep_time, :serving_size, :calories_count, :star_rating, :ingredients, :directions)
    end
end
