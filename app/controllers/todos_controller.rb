class TodosController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    project = Project.find_by(title: todo_project_params[:project_title]) || Project.create(title: todo_project_params[:project_title])
    byebug
    project.todos.create(todo_params)
  end

  def update
    todo = Todo.find(params[:id])
    if todo.update(todo_params)
      render json: todo
    else
      render json: todo.errors
    end
  end

  private

  def todo_params
    params.permit(:text, :is_completed)
  end

  def todo_project_params
    params.permit(:project_title)
  end
end
