# frozen_string_literal: true

class User < ApplicationRecord
  has_one_attached :image
  has_secure_password

  def to_s
    puts " first_name: #{first_name}, last_name: #{last_name}, email: #{email}, password: #{password} "
  end
  VALID_NAME_REGEX = /\A[^0-9`!@#$%\^&*+_=]+\z/.freeze
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/.freeze
  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: VALID_NAME_REGEX }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50 },
                        format: { with: /\A[^0-9`!@#$%\^&*+_=]+\z/ }
  validates :email, presence: true, length: { minimum: 10, maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX, message: 'must be a valid email address' }, uniqueness: { case_senitive: true }
  validates :password, presence: true, length: { minimum: 7, maximum: 255 }
  validates :password_confirmation, presence: true
end
