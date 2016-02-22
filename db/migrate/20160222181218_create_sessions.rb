class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :course_id
      t.Time :time
      t.Date :date

      t.timestamps null: false
    end
  end
end
