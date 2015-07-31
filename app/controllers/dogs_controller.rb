class DogsController < ApplicationController

  def index

    if params[:size].present? && params[:left_alone].present? && params[:housetrained].present? && params[:needs_another_dog].present? && params[:kids].present? && params[:activity].present? && params[:yard].present?
      @dogs = Dog.where(size: params[:size], left_alone: params[:left_alone], housetrained: params[:housetrained], needs_another_dog: params[:needs_another_dog], kids: params[:kids], activity: params[:activity], yard: params[:yard])

    else
      @dogs = []
    end

  end

  def show
    @dog = Dog.find(params[:id])
    @user = @dog.user

  end

  def new
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    # params[:user_id] = current_user.id
    @dog = Dog.create(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to @dog, notice: "dog was successfully created."
    else
      render :new
    end
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dog_path
    else
      render :edit
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :size, :left_alone, :housetrained, :needs_another_dog, :kids, :activity, :yard, :url, :blurb)
  end
end
