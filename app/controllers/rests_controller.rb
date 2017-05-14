class RestsController < ApplicationController
  def index
    @rests = Rest.all
    render "index.html.erb"
  end
  def destroy
    @rest = Rest.find_by(id: params[:id])
    @rest.destroy
    render "destroy.html.erb"
  end
  def edit
    @rest = Rest.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @rest = Rest.new(kind: params[:kind_param], duration: params[:duration_param], location: params[:location_param])
    @rest.save
    render "create.html.erb"
  end
  def show
    @rest = Rest.find_by(id: params[:id])
    render "show.html.erb"
  end
  def update
    @rest = Rest.find_by(id: params[:id])
    @rest.update(kind: params[:kind_param], duration: params[:duration_param], location: params[:location_param])
    render "update.html.erb"
  end
end
