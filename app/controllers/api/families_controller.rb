class Api::FamiliesController < ApplicationController

  def show
    @family = Family.find(params[:id])
  end

  def create
    @family = Family.new(family_params)

    if family.save
      render :show
    else
      render json: @family.errors, status: 422
    end
  end

  def update
    @family = Family.find(params[:id])

    if @family.update(family_params)
      render :show
    end
  end

  protected

  def family_params
    params.require(:family).permit(:name)
  end

end
