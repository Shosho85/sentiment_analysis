# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sentiment.destroy_all

Sentiment.create(text: 'I love this', behavior: 'positive', rating: 0.873)
Sentiment.create(text: 'I hate this', behavior: 'negative', rating: -0.234)
Sentiment.create(text: 'OMG, this is so poopy', behavior: 'negative', rating: -0.128)
Sentiment.create(text: 'Go infinity and beyond', behavior: 'positive', rating: 0.234)
Sentiment.create(text: 'Lets go Sananab', behavior: 'negative', rating: -0.999)