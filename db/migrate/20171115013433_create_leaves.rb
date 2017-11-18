class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.references :student, null: false, foreign_key: true
      t.timestamps null: false
     end
  end
end
