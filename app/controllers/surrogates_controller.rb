class SurrogatesController < ApplicationController

  def index
    @surrogates = Surrogate.all
  end

  def show
    @surrogate = Surrogate.find(params[:id])
  end

  def edit
    @surrogate = Surrogate.find(params[:id])
  end

  def update
    @surrogate = Surrogate.find(params[:id])
    surrogate_params = params.require(:surrogate).permit(:name, :status)
    @surrogate.update(surrogate_params)
    redirect_to @surrogate
  end

end
