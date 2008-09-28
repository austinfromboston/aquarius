class Project < ActiveRecord::Base
  belongs_to :organization
  belongs_to :primary_contact, :class_name => "Person"
  has_many :contracts
  
  SERVICE_TYPES = [ 'amp', 'revent', 'custom_rails', 'custom_dia', 'custom_other' ]
  STATUSES = [ 'lead', 'discovery', 'pending', 'scheduled', 'active', 'cancelled', 'completed' ]

  attr_accessor :primary_contact_name
end
