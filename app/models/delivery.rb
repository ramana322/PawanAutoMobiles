class Delivery < ApplicationRecord
	belongs_to :customer, required: true

	validates :engine_no, :chassis_no, :total_cost, presence: true
	validates :customer, presence: true

	accepts_nested_attributes_for :customer
	
	delegate :name,
			 to: :customer,
			 prefix: true,
			 allow_nil: false

	delegate :mobile_number,
			 to: :customer,
			 prefix: true,
			 allow_nil: false
end