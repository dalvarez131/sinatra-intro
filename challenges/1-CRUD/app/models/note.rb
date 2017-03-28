class Note < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, :content, presence: true
end
