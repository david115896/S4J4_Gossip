require 'faker'

def pause
10.times do
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, age: rand(18..99), city: City.all.sample)
end

20.times do |index|
	Gossip.create(title: "Gossip#{index}",content: Faker::ChuckNorris.fact, user: User.all.sample)
end

10.times do 
	Tag.create(title: "##{Faker::Games::Pokemon.name}")
end

1.upto(20) do |index|
	TagList.create(gossip: Gossip.find(index), tag: Tag.all.sample)	
end
end

20.times do
	message =PrivateMessage.create(sender: User.all.sample, content: Faker::Movies::HarryPotter.quote)
	rand(1..6).times do
		Recipient.create(private_message: message, user: User.all.sample)
	end
end
puts "all entries added"
