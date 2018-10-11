class CreateIncome < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
			t.date :recieved_on
			t.string :description
			t.float :amount
			t.integer :paid_by
			t.integer :category_id 
			t. integer :created_by
			t.timestamps
    end
  end
end
