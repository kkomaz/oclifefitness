class TestimonialsController < ApplicationController
  before_action :find_testimonial, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to testimonials_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @testimonial.update(testimonial_params)
      redirect_to testimonials_path
    else
      render 'edit'
    end
  end

  def destroy
    @testimonial.destroy
    redirect_to testimonials_path
  end

  private

  def find_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:name, :description, :image)
  end
end
