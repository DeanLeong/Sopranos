# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Blog.destroy_all
Character.destroy_all

@admin = User.create!(username: 'admin', email: 'admin@email.com', password_digest: '123456')

puts "#{User.count} users created"

@blog1 = Blog.create!(title: 'Lorem', content:'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis fugiat recusandae, obcaecati quisquam, reprehenderit tempora nulla laborum sed molestias voluptatem magnam, nostrum provident! Saepe earum beatae voluptas ad incidunt?
Obcaecati qui dignissimos facilis fugiat dolores eveniet non blanditiis iure possimus! Corrupti dolorum consectetur magnam voluptas ipsum sed blanditiis harum sapiente molestias fugit, vel aliquam nam voluptates adipisci ad rerum.
Dicta earum ut hic! Ab possimus tempore laborum odit laboriosam quod doloremque soluta fugit voluptas quidem esse vel earum ut minima, suscipit quaerat ducimus necessitatibus, aut accusamus! Recusandae, alias blanditiis.',
author: "Dean", imgurl:"https://media-exp1.licdn.com/dms/image/C4D03AQGRks4tEI6oZA/profile-displayphoto-shrink_200_200/0/1601553660964?e=1620864000&v=beta&t=dUVd09K4MKrl7KiZe-0okkf6HiylzVO-_jO4ij0oRDs", user: @admin)

puts "#{Blog.count} blogs created"

@character1 = Character.create!(name: 'Tony', biography: 'Tony Soprano', quotes: 'Let me tell you something. I have a semester and a half of college, so I understand Freud. I understand therapy, as a concept.', imgurl: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Tony_Soprano.jpg/270px-Tony_Soprano.jpg')

puts "#{Character.count} characters created"