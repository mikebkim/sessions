class AddStudentIdToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :student_id, :integer
  end
end
