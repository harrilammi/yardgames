class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :dob, :first_name, :jersey_number, :last_name, :position
end
