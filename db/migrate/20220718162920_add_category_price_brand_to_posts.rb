class AddCategoryPriceBrandToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :price, :integer
    add_column :posts, :brand, :string
    add_column :posts, :category, :string
  end
end
