class AddSlugToDashboards < ActiveRecord::Migration[5.0]
  def change
    add_column :dashboards, :slug, :string
    add_index :dashboards, :slug, unique: true
  end
end
