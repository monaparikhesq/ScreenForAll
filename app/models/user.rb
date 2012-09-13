class User < ActiveRecord::Base
  attr_accessible :company_id, :email, :first_name, :last_name
  
  has_many :rating
  has_many :member
  has_one :company, :through => :membership
end
