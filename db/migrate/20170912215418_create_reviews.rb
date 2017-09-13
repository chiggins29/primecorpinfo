class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :service_purchased
      t.text :body

      t.timestamps
    end
  end
end
