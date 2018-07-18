class Student < ApplicationRecord

    has_secure_password

    validates :email, presence: true, uniqueness: true

    has_one :subject
    has_many :appointments
    has_many :lessons, through: :appointments
 
    
end
