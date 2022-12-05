class CreateStudentSchedule < ActiveRecord::Migration[7.0]
  def change
    create_table :studentschedules do |t|
      t.string :uni
      t.string :course
      t.timestamps
    end
  end
end
