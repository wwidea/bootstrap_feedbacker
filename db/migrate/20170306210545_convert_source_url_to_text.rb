class ConvertSourceUrlToText < ActiveRecord::Migration
  def up
    change_column :bootstrap_feedbacker_remarks, :source_url, :text
  end
  def down
    change_column :bootstrap_feedbacker_remarks, :source_url, :string
  end
end
