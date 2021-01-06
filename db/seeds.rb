# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy everything!"
User.destroy_all
Worker.destroy_all
Skill.destroy_all
WorkerSkill.destroy_all

puts "Creating Users!"
5.times do
   User.create(name: Faker::FunnyName.name, username: Faker::Games::Zelda.character, password: "abc123")
end

puts "Creating Workers!"
5.times do 
   Worker.create(name: Faker::FunnyName.name, username: Faker::Games::SuperSmashBros.fighter, password: "abc123", age: rand(18..100))
end

puts "Learning skills!"
Skill.create(name: "Painter", category: "Art")
Skill.create(name: "Graphic Design", category: "Technology")
Skill.create(name: "Carpenter", category: "Construction")
Skill.create(name: "Chef", category: "Cooking")
Skill.create(name: "Analytics", category: "Data Science")

puts "Workers learning skills!"
5.times do 
   WorkerSkill.create(skill_id: Skill.all.sample.id, worker_id: Worker.all.sample.id)
end
