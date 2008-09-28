class InitialSetup < ActiveRecord::Migration
  def self.up

    create_table "contracts" do |t|
      t.string "contract_type", "billable_status", :size => 30
      t.text "description"
      t.integer "hourly_rate", "fixed_fee", "monthly_fee"
      t.integer "project_id", "account_id"
      t.datetime "last_invoiced_date"
      t.timestamps
    end

    create_table "organizations" do |t|
      t.string "name", "url", "phone"
      t.string "address", "address2", "city", "state", "zip", "country"
      t.string "annual_budget", "paid_staff"
    end

    create_table "people" do |t|
      t.string "first_name", "last_name", "name", "title", "address", "address2", "city", "state", "zip", "country"
      t.string "email", "phone", "mobile_phone", "aim_screenname", "role"
      t.boolean "billable"
      t.timestamps
    end

    create_table "people_organizations", :id => false do |t|
      t.integer "person_id", "organization_id"
    end

    create_table "projects" do |t|
      t.string "name", "service_type", "status"
      t.string "result_url"
      t.text "related_urls", "description"
      t.integer "primary_contact_id", "organization_id"
    end

  end

  def self.down
  end
end
