class CartItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :quantity,   presence: true, numericality: { greater_than: 0 }
  validates :product_id, presence: true

end
