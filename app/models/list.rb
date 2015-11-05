class List < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  def upvote!
    self.update(likes: self.likes + 1)
  end

end
