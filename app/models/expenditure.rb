class Expenditure < ApplicationRecord

validates :spent_on, :amount, presence: true

end