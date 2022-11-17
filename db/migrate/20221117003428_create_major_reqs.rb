class CreateMajorReqs < ActiveRecord::Migration[7.0]
  def change
    create_table :majorreqs do |t|
      t.string :subject
      t.string :course
      t.timestamps
    end
  end
end
