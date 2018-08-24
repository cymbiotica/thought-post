# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ideas = Idea.create(
	[
		{
			title: "Write a book", 
			body: "of thoughts"
		},
		{
			title: "A twitter client idea", 
			body: "like we did in class"
		},
		{
			title: "A new tattoo", 
			body: "Thich Nhat Hahn calligraphy"
		},
		{
			title: "Card game design", 
			body: "Like Magic but more"
		},
		{
			title: "Recreate Mint Tin Apocalypse in browser", 
			body: "Make it mobile"
		},
		{
			title: "start a Cult", 
			body: "Everyone likes you, and there is Kool-Aid"
		}
  ])
