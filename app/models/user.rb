class User < ApplicationRecord
    has_one_attached :image
    has_secure_password

    def to_s
        puts " first_name: #{self.first_name}, last_name: #{self.last_name}, email: #{self.email},address: #{self.address} password: #{self.password} "
    end
    # validates :first_name, presence: true, length: { minimum: 3, maximum: 30 }, format: { with: [a-zA-Z][a-zA-Z ] }
    # validates :last_name, presence: true, length: { minimum: 3, maximum: 30 }, format: { with: [a-zA-Z][a-zA-Z ] }
    # validates :email, presence: true, length: { minimum: 10, maximum: 50 }, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }, uniqueness: { case_senitive: false }
    # validates :adress, presence: true, length: { minimum: 3, maximum: 30 }, format: { with: [a-zA-Z][a-zA-Z ]{0-9} }
    # validates :password, presence: true, length: { minimum: 7, maximum: 20 }
end
