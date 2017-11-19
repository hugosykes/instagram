class Picture < ApplicationRecord
  before_destroy :destroy_comments
  mount_uploader :image, ImageUploader
  def destroy_comments
    comments = Comment.where(picture_id: self.id)
    comments.each { |c| c.destroy }
  end
end
