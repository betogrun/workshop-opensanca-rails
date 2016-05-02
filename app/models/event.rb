class Event < ActiveRecord::Base
	validates :name, presence: true

	has_many :participants
end
