class Post < ActiveRecord::Base
  after_initialize :init
  def init
    self.upvoteCount ||= 0.0
    self.poster ||= "Anon"
  end

  validates :title, :content, :presence => true
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => true

end
