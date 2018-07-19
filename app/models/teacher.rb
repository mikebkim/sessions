class Teacher < ApplicationRecord
   
    has_secure_password

    validates :email, presence: true, uniqueness: true
   
    has_many :lessons, dependent: :destroy

    INSTRUMENTS = ['Clarinet', 'Drums', 'Flute', 'Guitar', 'Piano', 'Saxophone', 'Trumpet', 'Violin', 'Other']

end
