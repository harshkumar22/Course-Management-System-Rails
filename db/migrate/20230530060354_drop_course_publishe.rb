class DropCoursePublishe < ActiveRecord::Migration[6.0]
  def change
    drop_table :course_publishes
  end
end
