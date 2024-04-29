class Contact < ApplicationRecord
    # Validations
    validates :address, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :telephone, presence: true, format: { with: /\A(\+\d{1,3})?\d{10}\z/ }
    validates :name, presence: true
    validates :message, presence: true
  end