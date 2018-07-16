class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.datetime :time
      t.string :subject
      t.string :homework
      t.integer :duration

      t.timestamps
    end
  end
end
