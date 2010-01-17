class ManyEmails < ActiveRecord::Migration
  def self.up
    add_column :people, "email2", :string
    add_column :people, "email3", :string
    add_column :people, "email4", :string
  end

  def self.down
    remove_column :people, "email4"
    remove_column :people, "email3"
    remove_column :people, "email2"
  end
end
