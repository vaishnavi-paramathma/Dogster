# frozen_string_literal: true

class DogList < ApplicationRecord
  has_one_attached :image
  has_one :wishlist
end
