class DogList < ApplicationRecord
    has_one_attached :image
    has_one :wishlist
end
