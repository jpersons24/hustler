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
15.times do 
   Worker.create(name: Faker::FunnyName.name)
end

puts "Learning skills!"
Skill.create(name: "Painter")
Skill.create(name: "Graphic Design")
Skill.create(name: "Carpenter")
Skill.create(name: "Chef")
Skill.create(name: "Analytics")
Skill.create(name: "Digital Marketing")
Skill.create(name: "Programming")
Skill.create(name: "Translation")
Skill.create(name: "Data Entry")
Skill.create(name: "Illustration")
Skill.create(name: "Video Explainer")


puts "Workers learning skills!"
5.times do 
   WorkerSkill.create(skill_id: Skill.all.sample.id, worker_id: Worker.all.sample.id)
end
