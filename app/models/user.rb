class User < ApplicationRecord
    has_one_attached :image
    has_secure_password

    def to_s
        puts " first_name: #{self.first_name}, last_name: #{self.last_name}, email: #{self.email}, password: #{self.password} "
    end
    validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
    validates :last_name, presence: true, length: { minimum: 3, maximum: 50 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
    validates :email, presence: true, length: { minimum: 10, maximum: 255 }, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }, uniqueness: { case_senitive: false }
    # validates :address, presence: true, length: {minimum: 10, maximum: 255}
    validates :password, presence: true, length: { minimum: 7, maximum: 25 }, confirmation: true 
    validates :password_confirmation, presence: true
end
