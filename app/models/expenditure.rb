class Expenditure < ApplicationRecord

validates :spent_on, presense: true
validates :amount, presense: true

end