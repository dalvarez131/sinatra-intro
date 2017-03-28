require 'faker'

10.times do |i|
  Note.create(title: Faker::StarWars.character, content: Faker::StarWars.wookie_sentence)
end
