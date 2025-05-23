class Product < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    if price <= 10
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
