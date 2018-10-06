class CreateExpenditures < ActiveRecord::Migration[5.1]
  def change
    create_table :expenditures do |t|

      t.timestamps
    end
  end
end
