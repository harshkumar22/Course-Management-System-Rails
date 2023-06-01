class AddColumnInSyllabus < ActiveRecord::Migration[6.0]
  def up
    add_column :syllabuses, :module_name, :string, null: false
  end
  
  def down
    remove_column :syllabuses, :module_name
  end
end
