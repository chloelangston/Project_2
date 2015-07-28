class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.create(dog_params)
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to @dog
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :left_alone, :housetrained, :needs_another_dog, :kids, :activity, :yard)
  end
end
