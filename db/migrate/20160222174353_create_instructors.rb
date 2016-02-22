class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :courses
      t.text :education

      t.timestamps null: false
    end
  end
end
