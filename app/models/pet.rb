class Pet < ActiveRecord::Base

  belongs_to :owner, class_name: 'User'
  belongs_to :adopted_by, class_name: 'User'
  has_one :address
  has_one :category

end
