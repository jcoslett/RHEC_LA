class AddDescsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :descriptions, :text
  end
end
