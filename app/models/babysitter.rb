class Babysitter < ActiveRecord::Base
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :phone, length: { minimum: 10 }
  validates :phone, length: { maximum: 10 }
  validates :email, uniqueness: true
  validates :phone, uniqueness: true

  belongs_to :parent

end
