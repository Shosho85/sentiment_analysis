class Sentiment < ActiveRecord::Base

	validates :text, presence: true
	validates :behavior, presence: true
	validates :rating, presence: true, numericality: true 

end 

