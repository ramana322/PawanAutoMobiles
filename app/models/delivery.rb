class Delivery < ApplicationRecord
	belongs_to :customer, required: true

	validates :delivered_on,
			  :engine_no,
			  :chassis_no,
			  :total_cost,
			  presence: true

	validates :customer, presence: true
	validate :check_delivered_on

	accepts_nested_attributes_for :customer
	
	delegate :name,
			 to: :customer,
			 prefix: true,
			 allow_nil: false

	delegate :mobile_number,
			 to: :customer,
			 prefix: true,
			 allow_nil: false


 	def check_delivered_on
		return true if delivered_on.blank?
		return true if (Date.parse(delivered_on.to_s) <= Date.today)
		errors.add(:delivered_on, 'Should not be in future.')
	end

end