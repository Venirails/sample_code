class AddChanges < ActiveRecord::Migration
  def change
	  add_column :companies,:no_of_employees,:integer
	  remove_timestamps :students
	  rename_column :students,:std,:standard
  end
end
