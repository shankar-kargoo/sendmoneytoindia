class DropFxMoneygrams < ActiveRecord::Migration
  def change
  	 drop_table :fx_moneygrams
  end
end
