class Game < ActiveRecord::Base
  attr_accessible :home_team_id, :visitor_team_id

  belongs_to :home_team, class_name: "Team", foreign_key: "home_team_id"
  belongs_to :visitor_team, class_name: "Team", foreign_key: "visitor_team_id"
end
