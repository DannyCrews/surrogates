class SurrogatesController < ApplicationController

  def index
    @surrogates = Surrogate.all
  end

  def  show
    @surrogate = Surrogate.find(params[:id])
  end

  def new
    @surrogate = Surrogate.new
  end

  def create
    @surrogate = Surrogate.new(surrogate_params)
    @surrogate.save
    redirect_to @surrogate
  end

  def edit
    @surrogate = Surrogate.find(params[:id])
  end

  def update
    @surrogate = Surrogate.find(params[:id])
    @surrogate.update(surrogate_params)
    redirect_to @surrogate
  end

  def destroy
    @surrogate = Surrogate.find(params[:id])
    @surrogate.destroy
    redirect_to surrogates_url
  end

  private

  def surrogate_params
      params.require(:surrogate).permit(:name, :status)
  end

end
