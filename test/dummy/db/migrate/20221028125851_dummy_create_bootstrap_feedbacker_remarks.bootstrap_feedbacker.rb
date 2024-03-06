# This migration comes from bootstrap_feedbacker (originally 20150901232221)
class CreateBootstrapFeedbackerRemarks < ActiveRecord::Migration[4.2]
  def change
    create_table :bootstrap_feedbacker_remarks do |t|
      t.integer :user_id
      t.string :source_url
      t.text :content

      t.timestamps null: false
    end
  end
end
