# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = User.new(email: 'test@gmail.com', password: 'password', password_confirmation: 'password')
user.save!

10.times do |x|
  post = Post.new(title: "Title #{x}", body: "Body #{x} Words go here Idk", user: user)
  post.save!
end
