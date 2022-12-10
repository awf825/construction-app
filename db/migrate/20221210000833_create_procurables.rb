class CreateProcurables < ActiveRecord::Migration[7.0]
  def change
    create_table :procurables do |t|
      t.string :name
      t.string :subcontractor
      t.integer :phase_id

      t.timestamps
    end
  end
end
