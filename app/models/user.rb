class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :my_pets, class_name: 'Pet', foreign_key: 'owner_id'
  has_many :adopted_pets, class_name: 'Pet', foreign_key: 'adopted_by_id'
  has_many :addresses, dependent: :destroy
end
