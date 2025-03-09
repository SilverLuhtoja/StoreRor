class Product < ApplicationRecord
    has_one_attached :featured_image
    # has_rich_text :description
    validates :name, :width, :height, :price, presence: true
    has_and_belongs_to_many :options

    def update_options_relations(new_option_ids)
        self.option_ids = new_option_ids
        save
    end
end
