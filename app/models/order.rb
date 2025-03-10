class Order < ApplicationRecord
  def self.create_default_order
    Order.create(
      "product_id": 1,
      "option_id": 2,
      "email": "order@gmail.com",
      "delivery_place": "Harjumaa, kullamaa, meiepood",
      "payment_info": "SWEDBANK..."
    )
  end
end
