class TrainersController < ApplicationController
  before_action :find_trainer, :only => [:edit, :update, :destroy]
  
  def index
    @trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to trainers_path, :notice => "Trainer was saved!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def trainer_params
    params.require(:trainer).permit(:name, :title, :description, :image)
  end

  def find_trainer
    @trainer = Trainer.find(params[:id])
  end
end
