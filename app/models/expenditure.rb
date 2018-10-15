class Expenditure < ApplicationRecord

	validates :spent_on, :amount, presence: true
	
	def self.find_by_year(year)
    where('extract(year from spent_on) = ?', year)
	end

end