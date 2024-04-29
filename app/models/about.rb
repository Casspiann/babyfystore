# app/models/about.rb
class About < ApplicationRecord
    has_one_attached :image
    
    # Validations
    validates :title, presence: true
    validates :description, presence: true
  end
  