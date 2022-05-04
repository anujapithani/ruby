class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :password
      t.string :student_id
      t.string :dob
      t.string :choose_year
      t.string :check_type
      t.string :select_branch
      t.string :address

      t.timestamps
    end
  end
end
