# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(email: 'user@cody.com', password: 'asdfasdf')

puts "1 User Created"

User.create!(email: 'cody@cody.com', password: 'asdfasdf', roles: 'admin')

puts "1 Admin User Created"

5.times do |blog|
	Blog.create!(catagory: "Tax", title:"My Blog Post #{blog}", description:"This is the description for #{blog}", body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")	
end

puts "5 Tax Blogs created!"

5.times do |blog|
	Blog.create!(catagory: "Estate", title:"My Blog Post #{blog}", description:"This is the description for #{blog}", body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")	
end

puts "5 Estate Blogs created!"

12.times do |review|
	Review.create!(full_name: "Cody H", service_purchased: "Tax", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", rating: 2)
end
	puts "10 Reviews Created"


10.times do |review|
	Review.create!(full_name: "Jon B", service_purchased: "Estate", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", rating: 3)
end
	puts "10 Reviews Created"



13.times do |review|
	Review.create!(full_name: "Steve H", service_purchased: "Entity", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", rating: 5)
end
	puts "10 Reviews Created"





















