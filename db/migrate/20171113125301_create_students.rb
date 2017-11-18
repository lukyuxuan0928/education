class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.text :description
      t.string :course

      t.timestamps
    end
  end
end
