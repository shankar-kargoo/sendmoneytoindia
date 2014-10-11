class CreateFxGoogle < ActiveRecord::Migration
  def change
    create_table :fx_googles do |t|
    	t.integer :rate
    	t.string :comment
      t.timestamps
    end
  end
end
