User.destroy_all
Destination.destroy_all

puts "creating users"

user1 = User.create(first_name: "Dom", last_name: "Szarkiel", email: "d")
user2 = User.create(first_name: "Sam", last_name: "Passarelli", email: "sam@gmail.com")
user3 = User.create(first_name: "Dena", last_name: "Weiss", email: "dena@gmail.com")

puts "creating destination"

destination1 = Destination.create(name: "Sear's Tower", date_visited: "12/23/2020", address: "100 N Michigan Ave", category: "Landmark", comment: "Its SO TALL! OMG!", visited: true, cost: 50, attendees: "Mom and dad", rating: 4, user_id: user1.id, latitude: 41.8788764, longitude: -87.6359149)
destination2 = Destination.create(name: "Bean", date_visited: "12/14/2020", address: "1234 Franklin Ave", category: "Landmark", comment: "Its SO ROUND! OMG!", visited: true, cost: 0, attendees: "Solo", rating: 2, user_id: user3.id)
destination3 = Destination.create(name: "Fireplace Inn", date_visited: "05/15/2019", address: "4321 Wells St", category: "Restaurant/Bar", comment: "OMG Its so fun, I was LIT!", visited: true, cost: 500, attendees: "THE SQUAD", rating: 5, user_id: user2.id)
destination4 = Destination.create(name: "Prysm", date_visited: "07/14/2019", address: "5678 Party Ave", category: "Club/Bar", comment: "Jack told me it was lit when he went there last time.", visited: false, cost: 0, attendees: "", user_id: user1.id, latitude: 41.9093619, longitude: -87.65253059999999)


