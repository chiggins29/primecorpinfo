class AddVideoToDashboard < ActiveRecord::Migration[5.0]
  def change
    add_column :dashboards, :video, :string
  end
end
