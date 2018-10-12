class AddDeliveredOnToDelivery < ActiveRecord::Migration[5.1]
  def change
  	add_column :deliveries, :delivered_on, :date
  end
end
