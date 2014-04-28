class SurrogatesController < ApplicationController

  def index
    @surrogates = Surrogate.all
  end

  def  show
    @surrogate = Surrogate.find(params[:id])
  end

  def edit
    @surrogate = Surrogate.find(params[:id])
  end

  def update
    @surrogate = Surrogate.find(params[:id])
    if @surrogate.update(surrogate_params)
      redirect_to @surrogate, notice: "surrogate successfully updated!"
    else
      render :edit
    end
  end

  def new
    @surrogate = Surrogate.new
  end

  def create
    @surrogate = Surrogate.new(surrogate_params)
    if @surrogate.save
      redirect_to @surrogate, notice: "Surrogate successfully created."
    else
      render :new
    end
  end

  def destroy
    @surrogate = Surrogate.find(params[:id])
    @surrogate.destroy
    redirect_to surrogates_url, alert: "Surrogate successfully deleted."
  end

  private

  def surrogate_params
      params.require(:surrogate).permit(:name, :status)
  end
end
