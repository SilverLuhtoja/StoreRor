class Product < ApplicationRecord
    has_one_attached :featured_image
    has_rich_text :description
    validates :name, :width, :height, presence: true
    has_and_belongs_to_many :options
end
