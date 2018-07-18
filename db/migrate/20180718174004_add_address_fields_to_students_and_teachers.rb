class AddAddressFieldsToStudentsAndTeachers < ActiveRecord::Migration[5.2]
  def change
    
    add_column :students, :address_2, :string
    add_column :students, :city, :string
    add_column :students, :state, :string
    add_column :students, :zipcode, :string

    add_column :teachers, :address_2, :string
    add_column :teachers, :city, :string
    add_column :teachers, :state, :string
    add_column :teachers, :zipcode, :string

  end
end
