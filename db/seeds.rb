require_relative("../models/client.rb")
require_relative("../models/pt.rb")
require_relative("../models/booking.rb")
require("pry-byebug")

Client.delete_all()

client1 = Client.new({
  'first_name' => 'Ash',
  'last_name' => 'Riley',
  'age' => 32
  })
client1.save()

client2 =Client.new({
    'first_name' => 'Zoe',
    'last_name' => 'Alexander',
    'age' => 30
    })
client2.save()

client3 = Client.new({
    'first_name' => 'David',
    'last_name' => 'Smith',
    'age' => 28
      })
client3.save()

client4 = Client.new({
    'first_name' => 'John',
    'last_name' => 'Caulfield',
    'age' => 37
    })
client4.save

booking1 = Booking.new({
  "type" => "bootcamp",
  "instructor" => "thomas",
  "capacity" => 10
  })

booking1.save()

booking2 = Booking.new({
    "type" => "ladies who lift",
    "instructor" => "sam",
    "capacity" => 10
    })
booking2.save()

booking3 = Booking.new({
      "type" => "bootcamp",
      "instructor" => "jonny",
      "capacity" => 10
      })
booking3.save()

booking4 = Booking.new({
            "type" => "circuits",
            "instructor" => "jonny",
            "capacity" => 10
            })
booking4.save()

pt1 = Pt.new({
  "name" => "thomas",
  "specialty" => "bootcamp",
  "client_id" => client1.id,
  "booking_id" => booking1.id
  })
  pt1.save()

pt2 = Pt.new({
  "name" => "sam",
  "specialty" => "ladies who lift",
  "client_id" => client2.id,
  "booking_id" => booking2.id
  })
pt2.save()

pt3 = Pt.new({
  "name" => "jonny",
  "specialty" => "circuits",
  "client_id" => client3.id,
  "booking_id" => booking3.id
  })
pt3.save()

pt4 = Pt.new({
  "name" => "jonny",
  "specialty" => "circuits",
  "client_id" => client4.id,
  "booking_id" => booking4.id
  })
pt3.save()

pt5 = Pt.new({
  "name" => "jonny",
  "specialty" => "circuits",
  "client_id" => client1.id,
  "booking_id" => booking4.id
  })
pt5.save()

binding.pry
nil
