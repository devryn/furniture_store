class Product < ApplicationRecord

  validates :name, presence: true
  validates :price, numericality: { only_integer: true }
  validates :condition, presence: true
  validates :on_clearance, inclusion: { in: [true, false] }
  validates :quantity, numericality: { only_integer: true }
  validates :category, presence: true
  
  def discount
    if on_clearance
      self.price *= 0.9 if condition.downcase == 'good'
      self.price *= 0.8 if condition.downcase == 'average'
    end
    self.price
  end

  def discount_amount
    case condition.downcase
    when "good" then "10"
    when "average" then "20"
    else "??"
    end
  end

  def photo_url

  end
end
