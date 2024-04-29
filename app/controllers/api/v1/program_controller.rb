# app/controllers/api/v1/program_controller.rb
class Api::V1::ProgramController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @program = Program.new(program_params)
   # @program.user_id = current_user.id if current_user
    @program.image.attach(params[:image]) if params[:image].present?

    if @program.save
      @image_url = url_for(@program.image) if @program.image.attached?
      render json: { program: @program, currentUser: @program.user_id , image_url: @image_url }, status: :created
    else
      render json: @program.errors.full_messages, status: :unprocessable_entity
    end
  end

  def index
    programs = Program.all
    render json: programs
  end

  def show
    program = Program.find(params[:id])
    render json: program
  end

  private

  def program_params
    params.permit(:price, :title, :description)
  end
end
