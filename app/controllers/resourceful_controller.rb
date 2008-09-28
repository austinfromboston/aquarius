class ResourcefulController < ApplicationController
  def show_response(format)
    format.html {}
    format.json { render :json => @person }
  end
  def index_response(format)
    format.html {}
    format.json { render :json => @people }
  end
end

