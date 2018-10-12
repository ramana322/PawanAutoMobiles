class Customer < ApplicationRecord
	has_many :deliveries

	validates :name, :mobile_number, presence: true

end