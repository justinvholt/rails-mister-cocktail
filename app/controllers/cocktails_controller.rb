# CocktailsController
class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]

  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show; end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /cocktails/1/edit
  def edit; end

  # POST /cocktails
  def create
    @cocktail = Cocktail.create(cocktail_params)

    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /cocktails/1
  def update
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to @cocktail }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /cocktails/1
  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    # params.require(:cocktail).permit(:name)
    params.require(:cocktail).permit(:name, doses_attributes: [:id, :description, :ingredient_id, :_destroy])
  end
end

