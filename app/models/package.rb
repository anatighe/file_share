class Package < ActiveRecord::Base
  belongs_to :shipment
  validates :shipment, :presence => true

  has_attached_file :doc, :default_url => "/:class/:attachment/missing_:style.png"
  
private
    
end