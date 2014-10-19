class CreateSbis < ActiveRecord::Migration
  def change
    create_table :sbis do |t|
    	t.integer :rate
    	t.string :comment
      t.timestamps
    end
  end
end
