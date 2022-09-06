puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating user..."
User.create(email:"willowj@email.com", password_digest:"janera")
User.create(email:"amina@email.com", password_digest:"amina")

puts "Creating projects..."
Project.create(title:"Excavation")
Project.create(title:"Research Land")

puts "Creating teammates ..."
Teammate.create(name:"Miya", email:"miya@yahoo.com")
Teammate.create(name:"Zia", email:"zia@gmail.com")

puts "Creating teammate_projects"
 teammate_projects.create()

puts "✅ Done seeding!"
