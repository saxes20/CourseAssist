class AddTimeToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :time, :string
  end
end
