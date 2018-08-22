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
			title: "A new cake recipe", 
			body: "Made of chocolate"
		},
		{
			title: "A twitter client idea", 
			body: "Only for replying to mentions and DMs"
		},
		{
			title: "A novel set in Italy", 
			body: "A mafia crime drama starring Berlusconi"
		},
		{
			title: "Card game design", 
			body: "Like Uno but involves drinking"
		}
  ])
