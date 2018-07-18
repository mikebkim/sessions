class Teacher < ApplicationRecord
   
    has_secure_password

    validates :email, presence: true, uniqueness: true
   
    has_many :lessons, dependent: :destroy

    INSTRUMENTS = ['Guitar', 'Piano', 'Clarinet']

end
