class Person < ActiveRecord::Base
  has_and_belongs_to_many :organizations
  has_many :projects, :through => :organizations
end
