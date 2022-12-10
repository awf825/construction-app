class CreatePhases < ActiveRecord::Migration[7.0]
  def change
    create_table :phases do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
