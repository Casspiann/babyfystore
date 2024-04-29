# app/controllers/api/v1/home_controller.rb
class Api::V1::HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    # Logic for fetching data
    homes = Home.all
    render json: homes
  end

  def create
    @home = Home.new(home_params)
    @home.image.attach(params[:image]) if params[:image].present?

    if @home.save
      @home_url = url_for(@home.image) if @home.image.attached?
      render json: { home: @home, home_url: @home_url }, status: :created
    else
      render json: @home.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    home = Home.find(params[:id])
    render json: home
  end

  private

  def home_params
    params.permit(:title, :description)
  end
end

