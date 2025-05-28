class Product < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2} 
  validates :price, presence: true, numericality: true,   numericality: { greater_than: 0 } 
  validates :description, length: { maximum: 500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    if price <= 4
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
