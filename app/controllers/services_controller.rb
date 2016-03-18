class ServicesController < ApplicationController
  before_action :find_service, :only => [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service
    else
      render 'new'
    end
  end

  def show
    @services = Service.limit(4);
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to root_path
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :image, :slug)
  end

  def find_service
    @service = Service.friendly.find(params[:id])
  end
end
