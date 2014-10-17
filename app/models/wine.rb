class Wine < ActiveRecord::Base
	VARIETALS = ['Cabernet Sauvigon', 'Chardonnay', 'Cantena', 'Merlot', 'Chianti']
	validates :name, :year, :country, presence: true
	validates :year,
		numericality: { only_integer: true}
	validates :varietal,
		inclusion: {in: VARIETALS, message: "%{value} is not a valid varietal"}

	has_many :log_entries, dependent: :destroy

	def average_rating
	
		if log_entries.loaded?
    		log_entries.map(&:rating).compact.average
  		else
    		log_entries.average(:rating)
  		end
	end
end
