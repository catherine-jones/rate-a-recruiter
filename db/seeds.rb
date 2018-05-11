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

users = User.ids;
recruiters = Recruiter.ids;

Rating.all.each do |rating| i = 0
  user = users[i]; #get the id in the relevant array position
  rating.user_id = user; #assign the id to the rating record
  recruiter = recruiters[i];
  rating.recruiter_id = recruiter;
  rating.save
  i = i + 1;
end

Rating.create!([{
  score: 3,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
},
{
  score: 9,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
},
{
  score: 5,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
},
{
  score: 2,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
},
{
  score: 8,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world."
}
])
