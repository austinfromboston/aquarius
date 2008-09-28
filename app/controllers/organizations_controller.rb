class OrganizationsController < ResourcefulController
  make_resourceful do
    actions :all
    response_for :show do |format|
      format.html {}
      format.json { render :json => @person }
    end
    response_for :index do |format|
      format.html {}
      format.json { render :json => @people }
    end
  end
end
