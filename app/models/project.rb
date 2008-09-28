class Project < ActiveRecord::Base
  belongs_to :organization
  belongs_to :primary_contact, :class_name => "Person"
  has_many :contracts
end
