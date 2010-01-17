class ProjectRoles < ActiveRecord::Migration
  def self.up
    add_column :projects, 'designer_id', :integer
    add_column :projects, 'project_manager', :integer
  end

  def self.down
    remove_column :projects, 'project_manager'
    remove_column :projects, 'designer_id'
  end
end
