class CreatePackage < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :delivery_id
      t.attachment :doc
    end
  end
end
