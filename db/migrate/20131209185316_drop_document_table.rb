class DropDocumentTable < ActiveRecord::Migration
  def change
    drop_table :documents
  end
end
