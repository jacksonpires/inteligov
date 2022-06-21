class Friend < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true

  # before_save do |friend|
  #   friend.full_name = "#{friend.name} #{friend.last_name}"
  # end

  before_save :update_name

  def update_name
    self.full_name = "#{self.name} #{self.last_name}"
  end
end
