class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.integer :age
      t.belongs_to :instructors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
