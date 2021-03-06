require_relative( "../models/member.rb" )
require_relative("../models/trainer.rb")
require_relative( "../models/session.rb" )
require_relative( "../models/booking.rb" )
require("pry-byebug")

Booking.delete_all()
Session.delete_all()
Member.delete_all()
Trainer.delete_all()


# Members
member1 = Member.new({
  "first_name" => "Dwayne",
  "last_name" => "Johnson",
  "alias" => "The Rock",
  "image_url" => "/images/1"
  })
member1.save()

member2 = Member.new({
  "first_name" => "Steve",
  "last_name" => "Austin",
  "alias" => "Stone Cold",
  "image_url" => "/images/2"
  })
member2.save()

member3 = Member.new({
  "first_name" => "Paul",
  "last_name" => "Lavesque",
  "alias" => "Triple H",
  "image_url" => "/images/3"
  })
member3.save()

member4 = Member.new({
  "first_name" => "Shawn",
  "last_name" => "Michaels",
  "alias" => "The Heartbreak Kid",
  "image_url" => "/images/4"
  })
member4.save()

trainer1 = Trainer.new({
  "first_name" => "Randy",
  "last_name" => "Savage",
  "alias" => "Macho Man",
  "image_url" => "/images/5"
  })
trainer1.save()

trainer2 = Trainer.new({
  "first_name" => "Ric",
  "last_name" => "Flair",
  "alias" => "Nature Boy",
  "image_url" => "/images/6"
  })
trainer2.save()

trainer3 = Trainer.new({
  "first_name" => "Hulk",
  "last_name" => "Hogan",
  "alias" => "Hulkamaniac",
  "image_url" => "/images/7"
  })
trainer3.save()

# Sessions
session1 = Session.new({
  "type" => "Suplexes",
  "starts_at" => "09:00",
  "on_date" => "2020-02-17",
  "led_by" => trainer3.id
  })
session1.save()

session2 = Session.new({
  "type" => "Suplexes",
  "starts_at" => "21:00",
  "on_date" => "2020-02-18",
  "led_by" => trainer2.id
  })
session2.save()

session3 = Session.new({
  "type" => "Elbow Drops",
  "starts_at" => "10:00",
  "on_date" => "2020-02-19",
  "led_by" => trainer1.id
  })
session3.save()

session4 = Session.new({
  "type" => "Mic Work",
  "starts_at" => "10:00",
  "on_date" => "2020-02-20",
  "led_by" => trainer2.id
  })
session4.save()

session5 = Session.new({
  "type" => "Submissions",
  "starts_at" => "10:00",
  "on_date" => "2020-02-21",
  "led_by" => trainer1.id
  })
session5.save()

session6 = Session.new({
  "type" => "Leg Drops",
  "starts_at" => "10:00",
  "on_date" => "2020-02-22",
  "led_by" => trainer3.id
  })
session6.save()

session7 = Session.new({
  "type" => "Taunting",
  "starts_at" => "10:00",
  "on_date" => "2020-02-23",
  "led_by" => trainer2.id
  })
session7.save()

session8 = Session.new({
  "type" => "Suplexes",
  "starts_at" => "10:00",
  "on_date" => "2020-02-10",
  "led_by" => trainer1.id
  })
session8.save()


# Bookings
booking1 = Booking.new({
  "member_id" => member1.id,
  "session_id" => session1.id
  })
booking1.save()

booking2 = Booking.new({
  "member_id" => member2.id,
  "session_id" => session2.id
  })
booking2.save()

booking3 = Booking.new({
  "member_id" => member3.id,
  "session_id" => session1.id
  })
booking3.save()

binding.pry()
nil
