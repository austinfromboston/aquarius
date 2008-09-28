# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def organization_options
    Organization.all.map { |o| [ o.name, o.id ] }
  end
  def project_options
    Project.all.map { |p| [ p.name, p.id ] }
  end
end
