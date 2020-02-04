# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

someguy = User.create(email: "some@guy.com", password: "password")
somegal = User.create(email: "some@gal.com", password: "password")

200.times do
  task =  Task.new(
            description:  Faker::Marketing.buzzwords,
            completed:    [true, false].sample,
            due_date:     Faker::Date.between(from: 2.weeks.ago, to: 2.weeks.from_now)
          )
  task.user = [someguy, somegal].sample
  task.due_date = nil if rand(1..4) == 4
  task.save
end

puts "#{User.count} users with a total of #{Task.count} tasks..."
