class SentimentsController < ApplicationController

	def index
		@sentiments = Sentiment.all
	end

	def show
		@sentiment = Sentiment.find(params[:id])
		@behavior = JSON.(params["type"])
	end

	def new
		@sentiment = Sentiment.new
	end

	def create
		@sentiment = Sentiment.new(sentiment_params)	

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
