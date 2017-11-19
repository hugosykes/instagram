class Picture < ApplicationRecord
  before_destroy :destroy_comments

  def destroy_comments
    comments = Comment.where(picture_id: self.id)
    comments.each { |c| c.destroy }
  end
end
