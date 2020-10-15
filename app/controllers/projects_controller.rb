class ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: projects.as_json(except: [:created_at, :updated_at],
                                  include: { todos: {except: [:created_at, :updated_at]}})
  end
end
