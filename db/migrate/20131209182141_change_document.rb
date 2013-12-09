class ChangeDocument < ActiveRecord::Migration
  def change
    change_table :documents do |t|
      t.attachment :doc
    end
  end
end
