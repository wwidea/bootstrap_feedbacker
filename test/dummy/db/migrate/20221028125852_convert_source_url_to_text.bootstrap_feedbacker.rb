# This migration comes from bootstrap_feedbacker (originally 20170306210545)
class ConvertSourceUrlToText < ActiveRecord::Migration[5.1]
  def up
    change_column :bootstrap_feedbacker_remarks, :source_url, :text
  end
  def down
    change_column :bootstrap_feedbacker_remarks, :source_url, :string
  end
end
