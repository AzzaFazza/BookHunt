class Post < ActiveRecord::Base
  after_initialize :init
  def init
    self.upvoteCount ||= 0
    self.poster ||= ""
  end
end
