require File.dirname(__FILE__) + '/../spec_helper'

describe Project do
  before do
    @project = create_project
  end
  describe "assignment of people" do
    before do
      Person.delete_all
      @contact = create_person
    end
    it "accepts a primary contact name" do
      @project.primary_contact_name = "Jack" 
      @project.primary_contact.should == @contact
    end 
    it "accepts a primary contact email" do
      @project.primary_contact_name = "jack@example.com" 
      @project.primary_contact.should == @contact
    end 
    it "creates new records for non-matching values" do
      @project.primary_contact_name = "jane@example.com" 
      @project.primary_contact.should be_an_instance_of( Person )
    end
  end
end
