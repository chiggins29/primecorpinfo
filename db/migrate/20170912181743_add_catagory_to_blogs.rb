class AddCatagoryToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :catagory, :string
  end
end
