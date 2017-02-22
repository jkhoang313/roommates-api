User.create(first_name: "Jackson", last_name: "Hoang", user_name: "jkhoang", email: "jackson@jackson.com", password: "j", password_confirmation: "j", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/p160x160/13151561_1102421989803723_1588046315803738007_n.jpg?oh=460751ef477f076b89aa4c8ec5766090&oe=593D93E4")
Home.create(address: "Manhattan, NY", name: "SKWAD", rules: "You do not talk about Fight Club.\nYou DO NOT talk about Fight Club.\nIf someone yells “stop!”, goes limp, or taps out, the fight is over.\nOnly two guys to a fight.\nOne fight at a time, fellas.\nThe fights are bare knuckle. No shirt, no shoes, no weapons.\nFights will go on as long as they have to.\nIf this is your first time at Fight Club, you have to fight.", admin_id: 1)
Bill.create(home_id: 1, total: 0)
User.first.update(home_id: 1)
User.create(first_name: "Johnny", last_name: "Kong", user_name: "jkong", email: "johnny@johnny.com", password: "j", password_confirmation: "j", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/p160x160/11203689_10207276362039663_7002089239072221018_n.jpg?oh=979f4f38c39d0c7d25dc5ac9a4b8cb03&oe=58FE878A", home_id: 1)
User.create(first_name: "Timothy", last_name: "Chang", user_name: "tchang", email: "tim@tim.com", password: "t", password_confirmation: "t", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/c0.27.160.160/p160x160/15966154_10154701778871508_5156580438285713655_n.jpg?oh=e03ab0e62b3de2612c8811dfa9671e4d&oe=594922A7", home_id: 1)
User.create(first_name: "Mark", last_name: "Favor", user_name: "mfavor", email: "mark@mark.com", password: "m", password_confirmation: "m", image_url: "https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-1/c0.59.649.649/s200x200/13876219_10157198441985052_6983698751903696829_n.jpg?oh=776d595234fe054758be3b088b1d644e&oe=59019D53", home_id: 1)
User.create(first_name: "Brad", last_name: "Smith", user_name: "bradlypitt", email: "brad@aol.com", password: "s", password_confirmation: "s", image_url: "http://news.cornell.edu/sites/chronicle.cornell/files/styles/feature_460x307_crop_only/public/mfa460.jpg?itok=nWQ8Y-RY")
User.create(first_name: "Michael", last_name: "Johnson", user_name: "mickeymouse", email: "mmousefan@gmail.com", password: "m", password_confirmation: "m", image_url: "https://image.freepik.com/free-photo/man-pointing-to-his-left_1149-1062.jpg")
User.create(first_name: "Sarah", last_name: "Meyer", user_name: "sarahh", email: "gumby4ever@gmail.com", password: "g", password_confirmation: "g", image_url: "http://il5.picdn.net/shutterstock/videos/4062847/thumb/7.jpg")
Transaction.create(title: "groceries", description: "milk, eggs, bread", amount: 17.55, user_id: 1, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "rent", description: "month of january", amount: 3634.22, user_id: 2, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "cleaning supplies", description: "sponges, febreeze, wet wipes", amount: 24.33, user_id: 4, bill_id: 1, payment_type: "Expense").update_balances
Transaction.create(title: "paid on venmo", description: "check your venmo", amount: 500, user_id: 3, bill_id: 1, payment_type: "Payment", receiver_id: 2).update_balances
Transaction.create(title: "papa johns", description: "2 large pizzas and 1 breadsticks", amount: 25.22, user_id: 4, bill_id: 1, payment_type: "Expense").update_balances
Bill.first.update_changes
Home.create(address: "11 Broadway", name: "Flatiron", rules: "No shoes on in the house.\nFeed the cat.\nDon't eat all of the oreos.\nAlways make sure there is an extra roll of TP.\nRinse out your dishes before leaving them in the sink.\nDon't Leave dishes in the sink for longer than a day.\nTurn all the lights off before bed and before leaving the apartment.\nMake sure the fridge door is closed.", admin_id: 5)
Bill.create(home_id: 2, total: 0)
Transaction.create(title: "groceries", description: "milk, eggs, bread", amount: 17.55, user_id: 5, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "rent", description: "month of january", amount: 3634.22, user_id: 6, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "cleaning supplies", description: "sponges, febreeze, wet wipes", amount: 24.33, user_id: 5, bill_id: 2, payment_type: "Expense").update_balances
Transaction.create(title: "paid on venmo", description: "check your venmo", amount: 500, user_id: 7, bill_id: 2, payment_type: "Payment", receiver_id: 5).update_balances
Transaction.create(title: "papa johns", description: "2 large pizzas and 1 breadsticks", amount: 25.22, user_id: 7, bill_id: 2, payment_type: "Expense").update_balances
bill = Bill.last
bill.update_changes
