# Jackson's Seed Data
User.create(first_name: "Jackson", last_name: "Hoang", user_name: "jkhoang", email: "jackson@jackson.com", password: "j", password_confirmation: "j", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/p160x160/13151561_1102421989803723_1588046315803738007_n.jpg?oh=460751ef477f076b89aa4c8ec5766090&oe=593D93E4")
Home.create(address: "Manhattan, NY", name: "SKWAD", rules: "You do not talk about Fight Club.\nYou DO NOT talk about Fight Club.\nIf someone yells “stop!”, goes limp, or taps out, the fight is over.\nOnly two guys to a fight.\nOne fight at a time, fellas.\nThe fights are bare knuckle. No shirt, no shoes, no weapons.\nFights will go on as long as they have to.\nIf this is your first time at Fight Club, you have to fight.", admin_id: 1)
Bill.create(home_id: 1, total: 0)
User.first.update(home_id: 1)
User.create(first_name: "Johnny", last_name: "Kong", user_name: "jkong", email: "johnny@johnny.com", password: "j", password_confirmation: "j", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/p160x160/11203689_10207276362039663_7002089239072221018_n.jpg?oh=979f4f38c39d0c7d25dc5ac9a4b8cb03&oe=58FE878A", home_id: 1)
User.create(first_name: "Timothy", last_name: "Chang", user_name: "tchang", email: "tim@tim.com", password: "t", password_confirmation: "t", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/c0.27.160.160/p160x160/15966154_10154701778871508_5156580438285713655_n.jpg?oh=e03ab0e62b3de2612c8811dfa9671e4d&oe=594922A7", home_id: 1)
User.create(first_name: "Mark", last_name: "Favor", user_name: "mfavor", email: "mark@mark.com", password: "m", password_confirmation: "m", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/c0.59.649.649/s200x200/13876219_10157198441985052_6983698751903696829_n.jpg?oh=776d595234fe054758be3b088b1d644e&oe=59019D53", home_id: 1)
Transaction.create(title: "taco tuesday", description: "beef, chips, salsa", amount: 65.44, user_id: 1, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "paypayed", description: "taco tuesday", amount: 16, user_id: 1, bill_id: 1, payment_type: "Payment", receiver_id: 2).update_balances
Transaction.create(title: "utilities", description: "month of january", amount: 140.22, user_id: 2, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "suprise party", description: "alcohol($80), food($30), cups($15)", amount: 125, user_id: 4, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "ordered chinese food", description: "that place down the block is good", amount: 50.98, user_id: 4, bill_id: 1, payment_type: "Expense").update_balances
Bill.first.update_changes
Message.create(content: "Is anyone going to be home in an hour?", home_id: 1, user_id: 1)
Message.create(content: "I got you", home_id: 1, user_id: 2)
Message.create(content: "Anyone want to order food?", home_id: 1, user_id: 3)
Message.create(content: "Last call", home_id: 1, user_id: 3)
Message.create(content: "Count me in", home_id: 1, user_id: 4)
Message.create(content: "Same", home_id: 1, user_id: 1)
Event.create(title: "Birthday Party", description: "Celebrating all the March babies, BYOB", start_date: "2017-03-11T21:00", end_date: "2017-03-12T03:00", home_id: 1, user_id: 3)
Event.create(title: "Movie Night", description: "The Dark Knight, Inception, or Remember the Titans", start_date: "2017-02-29T20:00", end_date: "2017-02-29T22:00", home_id: 1, user_id: 1)

# fix seed data
User.create(first_name: "Brad", last_name: "Smith", user_name: "bradlypitt", email: "brad@aol.com", password: "s", password_confirmation: "s", image_url: "https://image.freepik.com/free-photo/man-pointing-to-his-left_1149-1062.jpg")
Home.create(address: "11 Broadway", name: "Flatiron", rules: "No shoes on in the house.\nFeed the cat.\nDon't eat all of the oreos.\nAlways make sure there is an extra roll of TP.\nRinse out your dishes before leaving them in the sink.\nDon't Leave dishes in the sink for longer than a day.\nTurn all the lights off before bed and before leaving the apartment.\nMake sure the fridge door is closed.", admin_id: 5)
Bill.create(home_id: 2, total: 0)
User.find(5).update(home_id: 2)
User.create(first_name: "Michael", last_name: "Johnson", user_name: "mickeymouse", email: "mmousefan@gmail.com", password: "m", password_confirmation: "m", image_url: "https://news.cornell.edu/sites/chronicle.cornell/files/styles/feature_460x307_crop_only/public/mfa460.jpg?itok=nWQ8Y-RY", home_id: 2)
User.create(first_name: "Sarah", last_name: "Meyer", user_name: "sarahh", email: "gumby4ever@gmail.com", password: "g", password_confirmation: "g", image_url: "https://il5.picdn.net/shutterstock/videos/4062847/thumb/7.jpg", home_id: 2)
User.create(first_name: "John", last_name: "Smith", user_name: "johnnyboy", email: "packersfan@packers.com", password: "s", password_confirmation: "s", image_url: "https://content.sportslogos.net/logos/7/171/full/559.png", home_id: 2)
Transaction.create(title: "groceries", description: "milk, eggs, bread", amount: 17.55, user_id: 5, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "rent", description: "month of january", amount: 3634.22, user_id: 6, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "cleaning supplies", description: "sponges, febreeze, wet wipes", amount: 24.33, user_id: 5, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "paid on venmo", description: "check your venmo", amount: 500, user_id: 7, bill_id: 2, payment_type: "Payment", receiver_id: 6).update_balances
Transaction.create(title: "papa johns", description: "2 large pizzas and 1 breadsticks", amount: 25.22, user_id: 8, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "utilities", description: "month of january", amount: 65.44, user_id: 8, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "cable/internet", description: "month of january", amount: 62.11, user_id: 6, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "bought stuff for taco tuesdat", description: "ground beef, shells, margarita mix", amount: 80.55, user_id: 7, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "gave cash", description: "in cash", amount: 500, user_id: 5, bill_id: 2, payment_type: "Payment", receiver_id: 6).update_balances
Message.create(content: "Anyone want to go to the gym later?", home_id: 2, user_id: 5)
Message.create(content: "Sorry, maybe tomorrow!", home_id: 2, user_id: 7)
Message.create(content: "Wait for me! I can go in 30 minutes", home_id: 2, user_id: 8)
Message.create(content: "Okay ready now", home_id: 2, user_id: 8)
Message.create(content: "Don't forget to pay me back for rent!", home_id: 2, user_id: 6)
Message.create(content: "Okay got you", home_id: 2, user_id: 5)
Message.create(content: "My friend is having something at a comedy club, come out!", home_id: 2, user_id: 6)
Message.create(content: "Where's it at?", home_id: 2, user_id: 5)
Message.create(content: "43 Beaver St in FiDi", home_id: 2, user_id: 6)
Message.create(content: "Can't make it, have a volleyball tournament today", home_id: 2, user_id: 8)
Message.create(content: "I'll try to come", home_id: 2, user_id: 5)
Message.create(content: "Okay, want to leave together from home?", home_id: 2, user_id: 6)
Event.create(title: "surprise party", description: "for my friend Kate", start_date: "2017-04-04T20:00", end_date: "2017-04-04T23:59", home_id: 2, user_id: 8)
Event.create(title: "maintenance check", description: "they're coming to fix our shower", start_date: "2017-03-04T14:00", end_date: "2017-03-04T16:00", home_id: 2, user_id: 6)
Event.create(title: "movie night", description: "social network, hackers, or pirates of silicon valley", start_date: "2017-03-02T22:00", end_date: "2017-03-02T20:00", home_id: 2, user_id: 6)
Event.create(title: "having family over", description: "they're going to stay in my room for 2 days", start_date: "2017-03-14T00:00", end_date: "2017-03-16T23:59", home_id: 2, user_id: 5)
Bill.last.update_changes
