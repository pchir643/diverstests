puts 'Cleaning database...'
Product.destroy_all
Category.destroy_all

puts 'Creating categories...'
serv = Category.new(name: 'Service')
serv.save
arti = Category.new(name: 'Article')
arti.save
tran = Category.new(name: 'Transport')
tran.save

puts 'Creating products...'

50.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    category_id: 31
  )
end
puts 'Finished!'

50.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    category_id: 32
  )
end
puts 'Finished!'

50.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    category_id: 33
  )
end
puts 'Finished!'
