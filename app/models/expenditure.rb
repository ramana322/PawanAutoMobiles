class Expenditure < ApplicationRecord

	validates :spent_on, :description, :amount, presence: true
	validate :check_spent_on

	scope :order_by_spent_on, -> { order("spent_on ASC") }

	default_scope { order_by_spent_on }

	def check_spent_on
		return true if spent_on.blank?
		return true if (Date.parse(spent_on.to_s) <= Date.today)
		errors.add(:spent_on, 'Should not be in future.')
	end
	
	def self.find_by_year(year)
    where('extract(year from spent_on) = ?', year)
	end

end