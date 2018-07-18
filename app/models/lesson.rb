class Lesson < ApplicationRecord

    belongs_to :teacher
    has_one :appointment, dependent: :destroy
    has_one :student, through: :appointment, dependent: :destroy

end
