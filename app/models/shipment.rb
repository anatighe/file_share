class Shipment < ActiveRecord::Base
  validates :name, :presence => true
  validates :user_email, :presence => true
  validates :recipient_email, :presence => true

  has_many :packages, :inverse_of => :shipment, :dependent => :destroy

  accepts_nested_attributes_for :packages, allow_destroy: true
  
  before_save :generate_token

private
  def generate_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end