class AddFieldsToAccountsAndDivisions < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :name, :string
    add_column :users, :account_id, :integer
    add_column :projects, :account_id, :integer
    add_column :phases, :account_id, :integer
    add_column :divisions, :account_id, :integer
    add_column :divisions, :name, :string
    add_column :procurables, :account_id, :integer
    add_column :procurables, :division_id, :integer
  end
end
