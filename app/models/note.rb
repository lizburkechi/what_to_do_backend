class Note < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  def username
    self.user.username
  end

end
