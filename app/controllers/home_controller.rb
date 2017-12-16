class HomeController < ApplicationController
  def index
    @nursemaids = Nursemaid.paginate(:page => params[:page], :per_page => 5)
  end
end
