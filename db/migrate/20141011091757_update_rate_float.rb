class UpdateRateFloat < ActiveRecord::Migration
  def change

  	remove_column :fx_xooms, :rate, :integer
  	add_column :fx_xooms, :rate, :float


  	remove_column :fx_wus, :rate, :integer
  	add_column :fx_wus, :rate, :float


  	remove_column :fx_googles, :rate, :integer
  	add_column :fx_googles, :rate, :float


  	remove_column :fx_rtis, :rate, :integer
  	add_column :fx_rtis, :rate, :float

  end
end
