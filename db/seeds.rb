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

@admin = User.create!(
  username: 'admin', 
  email: 'admin@email.com', 
  password_digest: '123456',
  imgurl: 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE5NDg0MDU1MTg5ODE2ODQ3/dean-martin-9542166-1-402.jpg')

@user1 = User.create!(
  username: 'Dean',
  email: 'dean@gmail.com',
  password_digest: '123456',
  imgurl: 'N/A'
)

puts "#{User.count} users created"

@blog1 = Blog.create!(
  title: 'Lorem', 
  content:'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis fugiat recusandae, obcaecati quisquam, reprehenderit tempora nulla laborum sed molestias voluptatem magnam, nostrum provident! Saepe earum beatae voluptas ad incidunt?
  Obcaecati qui dignissimos facilis fugiat dolores eveniet non blanditiis iure possimus! Corrupti dolorum consectetur magnam voluptas ipsum sed blanditiis harum sapiente molestias fugit, vel aliquam nam voluptates adipisci ad rerum.
  Dicta earum ut hic! Ab possimus tempore laborum odit laboriosam quod doloremque soluta fugit voluptas quidem esse vel earum ut minima, suscipit quaerat ducimus necessitatibus, aut accusamus! Recusandae, alias blanditiis.',
  author: "Dean", 
  imgurl:"https://media-exp1.licdn.com/dms/image/C4D03AQGRks4tEI6oZA/profile-displayphoto-shrink_200_200/0/1601553660964?e=1620864000&v=beta&t=dUVd09K4MKrl7KiZe-0okkf6HiylzVO-_jO4ij0oRDs", 
  user: @admin)

@blog2 = Blog.create!(
  title: 'Lorem', 
  content:'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis fugiat recusandae, obcaecati quisquam, reprehenderit tempora nulla laborum sed molestias voluptatem magnam, nostrum provident! Saepe earum beatae voluptas ad incidunt?
  Obcaecati qui dignissimos facilis fugiat dolores eveniet non blanditiis iure possimus! Corrupti dolorum consectetur magnam voluptas ipsum sed blanditiis harum sapiente molestias fugit, vel aliquam nam voluptates adipisci ad rerum.
  Dicta earum ut hic! Ab possimus tempore laborum odit laboriosam quod doloremque soluta fugit voluptas quidem esse vel earum ut minima, suscipit quaerat ducimus necessitatibus, aut accusamus! Recusandae, alias blanditiis.',
  author: "Dean", 
  imgurl:"https://media-exp1.licdn.com/dms/image/C4D03AQGRks4tEI6oZA/profile-displayphoto-shrink_200_200/0/1601553660964?e=1620864000&v=beta&t=dUVd09K4MKrl7KiZe-0okkf6HiylzVO-_jO4ij0oRDs", 
  user: @user1
)

puts "#{Blog.count} blogs created"

@character1 = Character.create!(
  name: 'Tony Soprano', 
  biography: 'Tony etcetc', 
  quotes: 'Let me tell you something. I have a semester and a half of college, so I understand Freud. I understand therapy, as a concept.', 
  imgurl: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Tony_Soprano.jpg/270px-Tony_Soprano.jpg',
  user: @admin
)

@character2 = Character.create!(
  name: 'Christopher Moltisanti',
  biography: 'Chris etcetc',
  quotes: 'You Ever Feel Like Nothin’ Good Was Ever Gonna Happen To You?',
  imgurl: 'https://upload.wikimedia.org/wikipedia/en/f/ff/Christopher_Moltisanti.jpg',
  user: @user1
)

@character3 = Character.create!(
  name: 'Silvio Dante',
  biography: 'Silvio etc etc.',
  quotes: 'Just When I Thought I Was Out, They Pulled Me Back In.',
  imgurl: 'https://bamfstyle.com/wp-content/uploads/2019/11/sop603silv-main1.jpg',
  user: @user1
)

puts "#{Character.count} characters created"