class ChangeNameInUserAndCourse < ActiveRecord::Migration[6.0]
  def up
    rename_column :users, :name, :uname
    rename_column :courses, :name, :cname
  end

  def down
  end
end
