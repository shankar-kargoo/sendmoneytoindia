class AlterFxSbis < ActiveRecord::Migration
  def change
  	remove_column :fx_sbis, :rate, :integer
  	add_column :fx_sbis, :rate, :float
  end
end
