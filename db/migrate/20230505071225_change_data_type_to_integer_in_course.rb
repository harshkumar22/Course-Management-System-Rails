class ChangeDataTypeToIntegerInCourse < ActiveRecord::Migration[6.0]
  def up
    change_column :courses, :validity, :integer
  end

  def down
    change_column :courses, :validity, :datetime
  end
end
