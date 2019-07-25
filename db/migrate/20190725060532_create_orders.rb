class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :operator
      t.string :bill_to

      t.timestamps
    end
  end
end
