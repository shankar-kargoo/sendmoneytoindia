class CreateFxWu < ActiveRecord::Migration
  def change
    create_table :fx_wus do |t|
    	t.integer :rate
    	t.string :comment
      t.timestamps
    end
  end
end
