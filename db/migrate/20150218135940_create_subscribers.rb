class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.boolean :in_state

      t.timestamps null: false
    end
  end
end
