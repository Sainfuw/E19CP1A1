class CreateWorkpros < ActiveRecord::Migration[5.2]
  def change
    create_table :workpros do |t|
      t.boolean :status, default: false
      t.references :worker, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
