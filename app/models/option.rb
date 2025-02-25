class Option < ApplicationRecord
    validates :name, :width, :height, presence: true
    validate :image_presence

    has_one_attached :image

    # Scopes
    scope :by_name, ->(name) { where(name: name) }

    # Callbacks
    before_save :normalize_image_url

    private

    def image_presence
        errors.add(:image, "must be attached") unless image.attached?
    end

    def normalize_image_url
        if image.attached?
          self.image_url = image.filename.to_s.strip.downcase
        end
    end
end
