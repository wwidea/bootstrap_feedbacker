class ConvertSourceUrlToText < ActiveRecord::Migration[5.1]
  def up
    change_column :bootstrap_feedbacker_remarks, :source_url, :text
  end
  def down
    change_column :bootstrap_feedbacker_remarks, :source_url, :string
  end
end
