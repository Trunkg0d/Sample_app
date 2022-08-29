class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 400}
  mount_uploader :picture, PictureUploader
  # Returns a resized image for display.
  def display_image
    self.image.variant(resize_to_limit: [509, 513])
  end

end
