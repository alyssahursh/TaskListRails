class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def show
    @tasks = Task.all
    @current_task = nil

    @tasks.each do |task|
      index = params[:id].to_i
      if task[:id] == index
        @current_task = task
      end
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
