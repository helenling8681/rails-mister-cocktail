class DosesController < ApplicationController
   before_action :set_dose, only: [:destroy]

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    # get info from form
    @dose = Dose.new(doses_params)
    # read restaurant id from url
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # assign restaurant on backend
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])

  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
