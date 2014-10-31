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
    @user = GoodData::Profile[params[:id], :client => GoodDataRailsApp::Application.get_connection]
    begin
      @projects = @user.projects
    rescue Exception => e
      @projects = nil
    end
  end
end
