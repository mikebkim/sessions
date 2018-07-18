class Teacher < ApplicationRecord
   
    has_secure_password

    validates :email, presence: true, uniqueness: true
   
    has_many :lessons

    INSTRUMENTS = ['Guitar', 'Piano', 'Clarinet']

end
