class Api::V1::AboutController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @about = About.new(about_params)
    @about.image.attach(params[:image]) if params[:image].present?

    if @about.save
      @image_url = url_for(@about.image) if @about.image.attached?
      render json: { about: @about, image_url: @image_url }, status: :created
    else
      render json: @about.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    about = About.find(params[:id])
    render json: about
  end

  def index
    abouts = About.all
    render json: abouts
  end


  private

  def about_params
    params.permit(:title, :description)
  end
end