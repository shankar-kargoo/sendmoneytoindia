class CreateFxRti < ActiveRecord::Migration
  def change
    create_table :fx_rtis do |t|
    	t.integer :rate
    	t.string :comment
      t.timestamps
    end
  end
end
