require './alchemyapi'
alchemyapi = AlchemyAPI.new()


myText = "I hate this"
response = alchemyapi.sentiment("text", myText)
puts "Sentiment: " + response["docSentiment"]["type"]