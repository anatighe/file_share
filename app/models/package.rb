class Package < ActiveRecord::Base
  belongs_to :delivery

  has_attached_file :doc, :default_url => "/docs/:style/missing.png"
end