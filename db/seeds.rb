# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

User.create!([{
  first_name: "James",
  last_name: "Peches",
  email: "email@email.com",
  password: "secret"
},
{
  first_name: "Steve",
  last_name: "McQueen",
  email: "email1@email.com",
  password: "secret"
},
{
  first_name: "Kel",
  last_name: "Davies",
  email: "email2@email.com",
  password: "secret"
},
{
  first_name: "Leeh",
  last_name: "Allen",
  email: "email3@email.com",
  password: "secret"
},
{
  first_name: "Emma",
  last_name: "Jackobs",
  email: "email4@email.com",
  password: "secret"
}
])

Recruiter.destroy_all

Recruiter.create!([{
  name: "Lookahead Pony"
},
{
  name: "Mitchell Flake"
},
{
  name: "Recruitey"
},
{
  name: "Recrtiness"
},
{
  name: "more recruiters"
}
])

Rating.destroy_all

# Take each user, and then have them give
# a random rating for each recruiter.
# Feel free to change the `all` to be a subset
# of the collections (eg User.take(3), User.all[0..2] etc)
User.all.each do |user|
  Recruiter.all.each do |recruiter|
    user.ratings.create!({
      recruiter: recruiter,
      score: rand(1..10),
      review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
    })
  end
end
