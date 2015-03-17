namespace :db do
  desc "Fill in with sample data"
  task populate: :environment do
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password="password"
      User.create!(name: name, email: email, password: password, password_confirmation: password)
    end
  end
end