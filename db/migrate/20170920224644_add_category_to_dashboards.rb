class AddCategoryToDashboards < ActiveRecord::Migration[5.0]
  def change
    add_column :dashboards, :category, :string
  end
end
