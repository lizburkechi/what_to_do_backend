class Note < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  # def username
  #   this.user.username
  # end

end
