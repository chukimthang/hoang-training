require 'faker'

categories = Array.new
(0..100).each do |i|
  categories.push({
    name: Faker::Name.name 
  })
end
Category.create(categories)
