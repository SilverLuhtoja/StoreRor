class LandingPageController < ApplicationController
  INTRO_TEXT = ["Surprise your loved ones with beautifully crafted, unique berries—guaranteed to bring a big smile!",
  "Delight your family and friends with handcrafted, one-of-a-kind berries that make every occasion special!",
  "Give the gift of sweet elegance—our unique berry creations will leave them smiling!",
  "Turn any moment into a celebration with our beautifully designed, irresistible berries!",
  "A gift as unique as your loved ones—our handcrafted berries bring joy in every bite!",
  "Show your love with a gift that’s as sweet and special as they are—our unique berries are pure happiness!"
  ]

  private_constant :INTRO_TEXT

  def index
    @products = Product.all
    @introText = INTRO_TEXT.sample
  end
end
