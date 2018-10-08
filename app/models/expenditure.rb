class Expenditure < ApplicationRecord

validates :spent_on, presence: true
validates :amount, presence: true

end