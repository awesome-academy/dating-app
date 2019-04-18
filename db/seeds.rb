Gender.create!(name: 0)
Gender.create!(name: 1)
Gender.create!(name: 2)
Gender.create!(name: 3)

User.create!(
  email: "user@gmail.com",
  popularity: "5",
  admin: true,
  password: "password",
  confirmation_token: "8c80bbac5c4df6e9a85af6940ba1c3f3",
  confirmed_at: Time.zone.now,
  confirmation_sent_at: Time.zone.now)
9.times do |n|
  email = "user-#{n+1}@gmail.com"
  User.create!(
    email: email,
    popularity: "5",
    admin: false,
    password: "password",
    confirmation_token: "8c80bbac5c4df6e9a85af6940ba1c3f3",
    confirmed_at: Time.zone.now,
    confirmation_sent_at: Time.zone.now)
end
