# app/controllers/api/v1/services_controller.rb
class Api::V1::ServicesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    services = Service.all
    render json: services
  end

  def create
    @service = Service.new(service_params)
    @service.image.attach(params[:image]) if params[:image].present?

    if @service.save
      render json: @service, status: :created
    else
      render json: @service.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    service = Service.find(params[:id])
    render json: service
  end

  def update
    service = Service.find(params[:id])
    if service.update(service_params)
      render json: service
    else
      render json: service.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    head :no_content
  end

  private

  def service_params
    params.permit(:name, :description)
  end
end
