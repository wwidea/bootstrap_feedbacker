class CreateBootstrapFeedbackerRemarks < ActiveRecord::Migration
  def change
    create_table :bootstrap_feedbacker_remarks do |t|
      t.integer :user_id
      t.string :source_url
      t.text :content

      t.timestamps null: false
    end
  end
end
