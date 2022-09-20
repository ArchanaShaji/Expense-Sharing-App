class Partner < ApplicationRecord
	has_many :users, through: :expenses
end
