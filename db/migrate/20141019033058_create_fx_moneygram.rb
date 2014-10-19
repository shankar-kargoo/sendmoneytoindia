class CreateFxMoneygram < ActiveRecord::Migration
  def change
    create_table :fx_moneygrams do |t|
      t.float :rate
    	t.string :comment
      t.timestamps
    end
  end
end
