class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def show
    @dose = Dose.new
  end

  private
  def params_cocktail
    params.require(:cocktail).permit(:name, :picture)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
