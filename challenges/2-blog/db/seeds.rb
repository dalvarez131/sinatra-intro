require 'faker'

20.times do |i|
  tags1 = Tag.create(word: Faker::HarryPotter.quote)
  entry = Entry.new
  entry.tags << Entry.save(title: Faker::HarryPotter.character,author: Faker::HarryPotter.location,content: Faker::HarryPotter.quote)
end
