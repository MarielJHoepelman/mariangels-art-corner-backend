class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  validates :user, presence: true
  validates :order_items, presence: true


  def order_items_products
    order_items.map do |item|
      {
        id: item.id,
        quantity: item.quantity,
        price: item.price,
        product: {
          name: item.product.product_name,
          image: item.product.product_image,
        }
      }
    end
  end
end
