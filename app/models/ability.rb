class Ability<ActiveRecord::Base
	belongs_to :gig, optional: true
	belongs_to :skill , optional: true

end