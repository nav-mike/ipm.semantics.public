# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create email: 'admin@admin.com', password: '12345678'
admin.add_role :admin

# Create projects

5.times do
  Project.create! name: Faker::Lorem.word,
                  github: "https://github.com/#{Faker::Lorem.word}/#{Faker::Lorem.word}",
                  twitter: "https://twitter.com/#{Faker::Lorem.word}",
                  keywords: %w(owl ontology lod),
                  status: true,
                  title: Faker::Lorem.word,
                  logo: Faker::Avatar.image,
                  start_date: [*1.month.ago.to_date..1.day.ago.to_date].sample,
                  end_date: [*1.month.from_now.to_date..1.year.from_now.to_date].sample,
                  description: Faker::Lorem.paragraphs.first,
                  link: Faker::Internet.url
end
