class Emails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email, null: false
      t.string :ip_address, null: true
      t.timestamps
    end
  end
end