User.create!(
    name: "thovan",
    email:"vanquytho@gmail.com",
    password: "123123",
    password_confirmation: "123123",
    admin: true,
    activated: true,
    activated_at: Time.zone.now
)
    99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"

    User.create!(name: name,
    email: email,
    password: password,
    password_confirmation: password,
    activated: true, activated_at: Time.zone.now)
    end

 
        
            users = User.order(:created_at).take(6)
    30.times do
    content = Faker::Lorem.sentence(word_count: 5)
    users.each { |user| user.microposts.create!(content: content) }
end