class CreateCourseReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :coursereviews do |t|
      t.string :course
      t.string :prof
      t.text :review
      t.timestamps
    end
  end
end
