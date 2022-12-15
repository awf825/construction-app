class CreateProcurables < ActiveRecord::Migration[7.0]
  def change
    create_table :procurables do |t|
      t.string :procurable_name
      t.integer :submittal_number
      t.datetime :submittal_date
      t.integer :architect_review_period # time in days/weeks?
      t.datetime :submittal_return_date
      t.datetime :field_measure_date
      t.string :field_measure_activity
      t.integer :lead_time # time in day/weeks?
      t.datetime :date_available
      t.string :activity_needed_for
      t.datetime :date_needed
      t.string :subcontractor
      t.integer :phase_id

      t.timestamps
    end
  end
end
