class TasksController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @tasks = Task.all
  end

  def go_home
    redirect_to action: 'index'
  end

  def current_task
    Task.find(params[:id].to_i)
  end

  def create
    Task.create(title: params[:task][:title], description: params[:task][:description])
    go_home
  end

  def show
    @current_task = current_task
  end

  def new
  end

  def edit
    @current_task = current_task
  end

  def update
    @current_task = current_task
    @current_task.title = params[:task][:title]
    @current_task.description = params[:task][:description]
    @current_task.save
    go_home
  end

  def complete
    @current_task = current_task
    @current_task.completed_at = Time.now
    @current_task.save
    go_home
  end

  def uncomplete
    @current_task = current_task
    @current_task.completed_at = nil
    @current_task.save
    go_home
  end

  def delete
    @current_task = current_task
  end

  def destroy
    @current_task = current_task
    @current_task.destroy
    go_home
  end
end
