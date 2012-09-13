class Screencast < ActiveRecord::Base
  attr_accessible :company_id, :description, :title
  
  has_many :rating
  belongs_to :company
end
