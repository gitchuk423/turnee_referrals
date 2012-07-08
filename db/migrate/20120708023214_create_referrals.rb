class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :client_name
      t.string :client_email
      t.text :public_comments

      t.timestamps
    end
  end
end
