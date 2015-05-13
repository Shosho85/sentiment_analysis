class SentimentsController < ApplicationController

	def index
		@sentiments = Sentiment.all
	end

	def show
		@sentiment = Sentiment.find(params[:id])
	end

	def new
		@sentiment = Sentiment.new
	end

	def create
		@sentiment = Sentiment.new(sentiment_params)
		alchemyapi = AlchemyAPI.new
		result = alchemyapi.sentiment('text', @sentiment.text)
		behavior = result["docSentiment"]["type"]
		rating = result["docSentiment"]["score"]
		@sentiment.update({behavior: behavior, rating: rating})
		
		if @sentiment.save
			redirect_to @sentiment
		else
			render :new
		end
	end

	private
	def sentiment_params
		params.require(:sentiment).permit(:text, :behavior, :rating)
	end
end
