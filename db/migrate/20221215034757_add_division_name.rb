class AddDivisionName < ActiveRecord::Migration[7.0]
  def change
    rename_column :divisions, :name, :division_name
  end
end
