class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.decimal :price
      t.string :journal
      t.boolean :paid
      t.date :starts_on
      t.integer :subscriber_id

      t.timestamps null: false
    end
  end
end
