class RenameNameToFullName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :reviews, :name, :full_name
  end
end
