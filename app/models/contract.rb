class Contract < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :project_id

  CONTRACT_TYPES = %w[ hosting_amp hosting_rails new_site development ]
  BILLING_STATUSES = %w[ billable pending expired ]
end
