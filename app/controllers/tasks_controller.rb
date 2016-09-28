class TasksController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @tasks = Task.all
  end

  def create
    Task.create(title: params[:title], description: params[:description])
    redirect_to action: 'index'
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

  def complete
    @tasks = Task.all
    @current_task = nil

    @tasks.each do |task|
      index = params[:id].to_i
      if task[:id] == index
        task[:completed_at] = Time.now
        task.save
      end
    end

    redirect_to action: 'index'

  end

  def delete
    @tasks = Task.all
    @current_task = nil

    @tasks.each do |task|
      index = params[:id].to_i
      if task[:id] == index
        @current_task = task
      end
    end
  end

  def destroy
    @tasks = Task.all
    @current_task = nil

    @tasks.each do |task|
      index = params[:id].to_i
      if task[:id] == index
        @current_task = task
      end
    end

    @current_task.destroy
    redirect_to action: 'index'
  end
end
