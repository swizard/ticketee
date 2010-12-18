# encoding: utf-8
class ProjectsController < ApplicationController
  def index

  end
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "등록 성공"
      redirect_to @project
    else
      flash[:alert] = "Project has not been created."
      render :action => "new"
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
