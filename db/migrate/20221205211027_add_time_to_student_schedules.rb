class AddTimeToStudentSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :studentschedules, :time, :string
  end
end
