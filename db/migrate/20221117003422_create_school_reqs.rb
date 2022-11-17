class CreateSchoolReqs < ActiveRecord::Migration[7.0]
  def change
    create_table :schoolreqs do |t|
      t.string :school
      t.string :course
      t.timestamps
    end
  end
end
