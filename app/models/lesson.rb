class Lesson < ApplicationRecord

    belongs_to :teacher
    has_one :appointment
    has_one :student, through: :appointment

end
