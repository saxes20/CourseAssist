class RemoveCurrentlyOfferedFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_column :courses, :currentlyOffered, :integer
  end
end
