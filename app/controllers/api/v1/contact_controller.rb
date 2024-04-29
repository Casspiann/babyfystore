# app/controllers/api/v1/contact_controller.rb
class Api::V1::ContactController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    contact_params = params.require(:contact).permit(:address, :email, :telephone, :name, :message)
    contact = Contact.new(contact_params)
    
    if contact.save
      render json: { message: "Contact created successfully" }, status: :created
    else
      render json: { errors: contact.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
