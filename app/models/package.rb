class Package < ActiveRecord::Base
  belongs_to :delivery
  validates :delivery, :presence => true

  has_attached_file :doc, :default_url => "/:class/:attachment/missing_:style.png"

end