class CreateCoursePublishes < ActiveRecord::Migration[6.0]
  def change
    create_table :course_publishes, primary_key: [:user_id, :course_id] do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.timestamps
    end
  end
end
