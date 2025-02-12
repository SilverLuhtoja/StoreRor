class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ landing about information shopcart]

  def landing
  introTexts = ["Surprise your loved ones with beautifully crafted, unique berries—guaranteed to bring a big smile!",
    "Delight your family and friends with handcrafted, one-of-a-kind berries that make every occasion special!",
    "Give the gift of sweet elegance—our unique berry creations will leave them smiling!",
    "Turn any moment into a celebration with our beautifully designed, irresistible berries!",
    "A gift as unique as your loved ones—our handcrafted berries bring joy in every bite!",
    "Show your love with a gift that’s as sweet and special as they are—our unique berries are pure happiness!"
    ]
  

    @products = Product.all
    @introText = introTexts.sample
  end

  def about
  end

  def information
  end

  def shopcart
    @orders = [
      create_product("L6ikelaud (Koer)", "40x30", 35),
      create_product("Puu alus (CustomGraving)", "20x20", 10),
      create_product("Tassi alus (Bird&Tree)", "10x10", 5)
    ]

    @total_sum = @orders.sum { |order| order[:price].to_i }
  end

  def create_product(name, size, price)
    return {"name": name, "size": size, "price": price}
  end
end
