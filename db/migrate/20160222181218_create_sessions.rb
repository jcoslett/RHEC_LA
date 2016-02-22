class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :course_id
      t.string :time
      t.string :date

      t.timestamps null: false
    end
  end
end
