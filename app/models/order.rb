class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def update_totals
    self.subtotal = carted_products.sum { |cp| cp.quantity * cp.product.price }
    self.tax = subtotal * 0.09
    self.total = subtotal + tax
    save!
  end
end
