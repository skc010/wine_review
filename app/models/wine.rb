class Wine < ActiveRecord::Base
	VARIETALS = ['Cabernet Sauvigon', 'Chardonnay', 'Cantena', 'Merlot', 'Chianti']
	validates :name, :year, :country
	validates :year,
		numericality: { only_integer: true}
	validates :varietal,
		inclusion: {in: VARIETALS, message: "%{value} is not a valid varietal"}

end
