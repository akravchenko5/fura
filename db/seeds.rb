require 'faker'

puts "Creating users"
User.create!(email: 'alex1@example.com', 
            password: 'password', 
            role: 'client',
            confirmed_at: Time.now);
User.create!(email: 'alex2@example.com', 
            password: 'password', 
            role: 'driver',
            confirmed_at: Time.now);
User.create!(email: 'alex3@example.com', 
            password: 'password', 
            role: 'admin',
            confirmed_at: Time.now);
puts "Users created"


