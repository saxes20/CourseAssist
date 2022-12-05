class RemoveReviewsFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :reviews, :text
  end
end
