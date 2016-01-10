class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.string :recip_name
      t.string :recip_number
      t.integer :sent_count, :default => 0
      t.boolean :sent, :default => false
      t.timestamp :sent_at, :default => nil
      t.string :sent_by_name
      t.string :sent_by_number
      t.integer :priority, :default => 0

      t.timestamps
    end
  end
end
