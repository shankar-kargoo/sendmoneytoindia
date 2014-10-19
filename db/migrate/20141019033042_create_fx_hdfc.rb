class CreateFxHdfc < ActiveRecord::Migration
  def change
    create_table :fx_hdfcs do |t|
    	t.float :rate
    	t.string :comment
      t.timestamps
    end
  end
end
