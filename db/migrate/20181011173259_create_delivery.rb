class CreateDelivery < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
    	t.string :engine_no
		t.string :chassis_no
		t.string :customer_id, index: true
		t.float :total_cost
		t.float :subsidy
		t.float :insurance
		t.float :registration
		t.float :warranty
		t.float :transport
		t.float :agreements
    end
  end
end
