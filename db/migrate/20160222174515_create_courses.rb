class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :category
      t.string :name
      t.string :course_id

      t.timestamps null: false
    end
  end
end
