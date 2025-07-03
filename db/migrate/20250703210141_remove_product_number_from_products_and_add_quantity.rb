class RemoveProductNumberFromProductsAndAddQuantity < ActiveRecord::Migration[8.0]
  def change
    remove_column :products, :product_number, :integer
    add_column :products, :quantity, :integer
  end
end
