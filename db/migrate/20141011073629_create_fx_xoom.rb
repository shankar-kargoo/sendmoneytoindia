class CreateFxXoom < ActiveRecord::Migration
  def change
    create_table :fx_xooms do |t|
    	t.integer :rate
    	t.string :comment
      t.timestamps
    end
  end
end
