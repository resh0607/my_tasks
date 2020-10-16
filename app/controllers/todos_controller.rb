class TodosController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
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
end
