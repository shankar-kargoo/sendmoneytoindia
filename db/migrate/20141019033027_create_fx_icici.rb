class CreateFxIcici < ActiveRecord::Migration
  def change
    create_table :fx_icicis do |t|
    	t.float :rate
    	t.string :comment
      t.timestamps
    end
  end
end