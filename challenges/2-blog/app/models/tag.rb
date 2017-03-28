class Tag < ActiveRecord::Base
  has_many :entriesTags
  has_many :entries , through: :entriesTags

  validates :word, presence: true
  # Remember to create a migration!
end
