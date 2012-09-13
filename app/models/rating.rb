class Rating < ActiveRecord::Base
  attr_accessible :screencast_id, :stars, :user_id
  
  belongs_to :screencast
  belongs_to :user
end
