class Gig<ActiveRecord::Base
	has_many :proposals
	belongs_to :user, optional: true
	belongs_to :category, optional: true
	has_many :abilities
	has_many :skills, through: :abilities 

end