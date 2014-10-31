require 'gooddata/models/profile'

class UsersController < ApplicationController
  def index
    @params = params
    if params[:project_id]
      @project = GoodDataRailsApp::Application.get_connection.projects(params[:project_id])
      begin
        @users = @project.users
      rescue Exception => _e
        @users = nil
      end
    end
  end

  def show
    # @user = GoodDataRailsApp::Application.get_connection.projects(params[:id])
    # acc = GoodDataRailsApp::Profile[params[:id], :client => GoodDataRailsApp::Application.get_connection]
  end

end
