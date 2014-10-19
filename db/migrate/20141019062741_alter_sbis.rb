class AlterSbis < ActiveRecord::Migration
  def change
  	rename_table :sbis, :fx_sbis
  end
end
