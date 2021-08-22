class Hero < ApplicationRecord
	belongs_to :team

	validates :name, presence: true
	validates :power, presence: true
	validates :race, presence: true
end
