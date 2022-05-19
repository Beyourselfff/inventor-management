class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categorie = Category.find(params[:id])
  end

  def new
    @categorie = Category.new
  end

  def create
    @categorie = Category.create(categories_params)
    redirect_to @categories_path
  end

  def edit
    @categorie = Category.find(params[:id])
  end

  def update
    @categorie.update(categories_params)
    redirect_to categorie_path(@categorie)
  end

  def destroy
    @categorie = Category.find(params[:id])
    @categorie.destroy
    redirect_to categories_path
  end

  private

  def categories_params
    params.require(:categories).permit(:name)
  end
end
