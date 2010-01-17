class Affiliations < ActiveRecord::Migration
  def self.up
    create_table :affiliations do |t|
      t.integer 'person_id', 'organization_id'
    end
    drop_table :organizations_people
  end

  def self.down
    create_table :organizations_people, :id => false do |t|
      t.integer 'person_id', 'organization_id'
    end
    drop_table :affiliations
  end
end
