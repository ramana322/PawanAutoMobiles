class CreateExpenditure < ActiveRecord::Migration[5.1]
  def change
    create_table :expenditures do |t|
    	t.date :spent_on
		t.string :description
		t.float :amount
		t.integer :paid_to
		t.integer :category_id 
		t. integer :created_by
		t.timestamps
    end
  end
end
