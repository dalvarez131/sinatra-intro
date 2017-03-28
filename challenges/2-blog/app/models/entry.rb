class Entry < ActiveRecord::Base
  has_many :entriesTags
  has_many :tags, through: :entriesTags
  validates :title, :author, :content, presence: true
  # Remember to create a migration!
end
