# encoding: utf-8
class ProjectsController < ApplicationController
  def index

  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(params[:project])
    @project.save!
    flash[:notice] = "등록 성공"
    redirect_to @project
  end

  def show
    
  end
end
