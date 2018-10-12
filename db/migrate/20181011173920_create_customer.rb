class CreateCustomer < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
    	t.string :name
    	t.text :address
    	t.string :mobile_number 
    end
  end
end
