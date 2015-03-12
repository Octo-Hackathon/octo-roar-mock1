class Opportunity < ActiveRecord::Base
	belongs_to:user
	validates :title, :opportunitytype, :description, :buyername, :primaypoc, presence: true
end
