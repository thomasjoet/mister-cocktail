class DosesController < ApplicationController
before_action :set_cocktail

  def create
    @dose = @cocktail.doses.build(review_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
