class ProjectsController < ApplicationController
  def index
    @projects = GoodDataRailsApp::Application.get_connection.projects
  end

  def show
    @project = GoodDataRailsApp::Application.get_connection.projects(params[:id])

    begin
      @users = @project.users
    rescue Exception => _e
      @users = nil
    end
  end
end
