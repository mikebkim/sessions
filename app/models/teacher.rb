class Teacher < ApplicationRecord
   
    has_secure_password

    validates :email, presence: true, uniqueness: true
   
    has_many :lessons
    has_many :students
    has_many :schedules

    INSTRUMENTS = ['Guitar', 'Piano', 'Clarinet']

end
