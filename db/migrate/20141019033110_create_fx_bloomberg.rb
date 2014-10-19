class CreateFxBloomberg < ActiveRecord::Migration
  def change
    create_table :fx_bloombergs do |t|
    	t.float :rate
    	t.string :comment
      t.timestamps
    end
  end
end
