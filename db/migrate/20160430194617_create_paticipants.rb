class CreatePaticipants < ActiveRecord::Migration
  def change
    create_table :paticipants do |t|
      t.string :name
      t.integer :event_id

      t.timestamps null: false
    end
    add_index :paticipants, :event_id
  end
end
