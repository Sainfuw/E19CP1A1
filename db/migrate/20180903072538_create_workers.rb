class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
