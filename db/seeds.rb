# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

User.create!([{
  id:"0a4ce1c6-4cde-11e8-842f-0ed5f89f718b",
  first_name: "James",
  last_name: "Peches",
  email: "email@email.com",
  password: "secret",
  ratings_id:"0a4cfc10-4cde-11e8-842f-0ed5f89f718b"
},
{
  id:"0a4ce45a-4cde-11e8-842f-0ed5f89f718b",
  first_name: "Steve",
  last_name: "McQueen",
  email: "email1@email.com",
  password: "secret",
  ratings_id:"0a4cf990-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4cec34-4cde-11e8-842f-0ed5f89f718b",
  first_name: "Kel",
  last_name: "Davies",
  email: "email2@email.com",
  password: "secret",
  ratings_id: "0a4cf666-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4ce8d8-4cde-11e8-842f-0ed5f89f718b",
  first_name: "Leeh",
  last_name: "Allen",
  email: "email3@email.com",
  password: "secret",
  ratings_id: "0a4cf40e-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4ce694-4cde-11e8-842f-0ed5f89f718b",
  first_name: "Emma",
  last_name: "Jackobs",
  email: "email4@email.com",
  password: "secret",
  ratings_id: "0a4cee6e-4cde-11e8-842f-0ed5f89f718b"
}
])

Recruiter.destroy_all

Recruiter.create!([{
  id: "0a4cfe04-4cde-11e8-842f-0ed5f89f718b",
  company_name: "Lookahead Pony"
},
{
  id: "0a4d0002-4cde-11e8-842f-0ed5f89f718b",
  company_name: "Mitchell Flake"
},
{
  id: "0a4d01ce-4cde-11e8-842f-0ed5f89f718b",
  company_name: "Recruitey"
},
{
  id: "0a4d0552-4cde-11e8-842f-0ed5f89f718b",
  company_name: "Recrtiness"
},
{
  id: "0a4d06ba-4cde-11e8-842f-0ed5f89f718b",
  company_name: "more recruiters."
}
])

Rating.destroy_all

Rating.create!([{
  id: "0a4cfc10-4cde-11e8-842f-0ed5f89f718b",
  rating: 3,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  recruiters_id: "a4d06ba-4cde-11e8-842f-0ed5f89f718b" , users_id:"0a4ce1c6-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4cec34-4cde-11e8-842f-0ed5f89f718b",
  rating: 9,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  recruiters_id:"0a4d0552-4cde-11e8-842f-0ed5f89f718b" , users_id:"0a4ce45a-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4cee6e-4cde-11e8-842f-0ed5f89f718b",
  rating: 5,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  recruiters_id: "0a4d01ce-4cde-11e8-842f-0ed5f89f718b" , users_id:"0a4cec34-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4cf40e-4cde-11e8-842f-0ed5f89f718b",
  rating: 2,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  recruiters_id:"0a4d0002-4cde-11e8-842f-0ed5f89f718b" , users_id:"0a4ce8d8-4cde-11e8-842f-0ed5f89f718b"
},
{
  id: "0a4cf666-4cde-11e8-842f-0ed5f89f718b",
  rating: 8,
  review: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  recruiters_id:"0a4cfe04-4cde-11e8-842f-0ed5f89f718b" , users_id:"0a4ce694-4cde-11e8-842f-0ed5f89f718b"
}
])
