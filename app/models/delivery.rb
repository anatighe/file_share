class Delivery < ActiveRecord::Base
  validates :name, :presence => true
  validates :user_email, :presence => true
  validates :recipient_email, :presence => true

  has_many :packages, :inverse_of => :delivery, :dependent => :destroy

  accepts_nested_attributes_for :packages, allow_destroy: true
end