class Pet < ActiveRecord::Base

  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :adopted_by, class_name: 'User', foreign_key: 'adopted_by_id'
  belongs_to :address
  belongs_to :category

  validates :name, :address, :owner, :category, presence: true

end
