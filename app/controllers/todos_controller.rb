class TodosController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    project = Project.find_or_create_by(title: todo_project_params[:project_title])
    todo = project.todos.new(todo_params)

    if todo.valid?
      todo.save!
      render json: todo
    else
      render json: todo.errors
    end
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
