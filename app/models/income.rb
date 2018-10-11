class Income < ApplicationRecord
	validates :recieved_on, :description, :amount, presence: true
	validate :check_recieved_on

	def check_recieved_on
		return true if recieved_on.blank?
		return true unless (Date.parse(recieved_on.to_s) <= Date.today)
		errors.add(:recieved_on, 'Should not be in future.')
	end
end