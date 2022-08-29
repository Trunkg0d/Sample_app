class Micropost < ApplicationRecord
  belongs_to :user
  # has_one_attached :image
  mount_uploader :picture, PictureUploader
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 400}
<<<<<<< HEAD
  mount_uploader :picture, PictureUploader
  # Returns a resized image for display.
  def display_image
    self.image.variant(resize_to_limit: [509, 513])
  end

=======
  # validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
  #   message: "must be a valid image format" },
  #   size: { less_than: 5.megabytes,
  #   message: "should be less than 5MB" }

  # Returns a resized image for display.
  # def display_image
  #   image.variant(resize_to_limit: [509, 513])
  # end
  
>>>>>>> 8cad5dcef0cc9454465b3dcb7b258b5da1547dd4
end
