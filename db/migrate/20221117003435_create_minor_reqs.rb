class CreateMinorReqs < ActiveRecord::Migration[7.0]
  def change
    create_table :minorreqs do |t|
      t.string :subject
      t.string :course
      t.timestamps
    end
  end
end
