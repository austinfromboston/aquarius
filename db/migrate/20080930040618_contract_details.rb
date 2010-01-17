class ContractDetails < ActiveRecord::Migration
  def self.up
    add_column :contracts, "expires_date", :datetime
    add_column :contracts, "maximum_hours", :string
    add_column :contracts, "hours_included", :float
    add_column :contracts, "gigabits_included", :string
    add_column :contracts, "gigabit_rate", :string
  end

  def self.down
    remove_column :contracts, "gigabit_rate"
    remove_column :contracts, "gigabits_included"
    remove_column :contracts, "hours_included"
    remove_column :contracts, "maximum_hours"
    remove_column :contracts, "expires_date"
  end
end
