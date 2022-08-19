# frozen_string_literal: true

class DogList < ApplicationRecord
  has_one_attached :image
  has_one :wishlist

  VALID_NAME_REGEX = /\A[^0-9`!@#$%\^&*+_=]+\z/.freeze

  validates :dog_name, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  validates :breed, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  validates :gender, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  validates :age, presence: true, length: { minimum: 1, maximum: 30 }
  validates :ph_no, presence: true, length: { minimum: 10, maximum: 10 }
  validates :my_story, presence: true, length: { minimum: 10, maximum: 500 }, format: { with: VALID_NAME_REGEX }
  validates :state, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  validates :city, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  # validates :additional_adoption_info, presence: true, length: {  maximum: 500 }
end
