class Student < ApplicationRecord

    has_secure_password

    validates :email, presence: true, uniqueness: true

    has_one :subject
    has_many :lessons
    has_many :teachers
    
end
