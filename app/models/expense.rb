class Expense < ApplicationRecord
	belongs_to :user
	belongs_to :partner
	belongs_to :category
	has_many :currencies
end
