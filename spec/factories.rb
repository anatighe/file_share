require 'spec_helper'

FactoryGirl.define do
  
  factory :package do
    doc_file_name { 'kitten.jpg' }
    doc_content_type { 'spec/kitten.jpg' }
    doc_file_size { 1024 }
    doc_updated_at { Time.now }
    shipment
  end
  
  factory :shipment do
    name "Ana"
    user_email "me@example.com"
    recipient_email "you@example.com"
    message "Hello"
  end
end