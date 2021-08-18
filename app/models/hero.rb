class Hero < ApplicationRecord
	validates :name, presence: true
	validates :power, presence: true
	validates :race, presence: true
end
