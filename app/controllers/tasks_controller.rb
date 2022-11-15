class TasksController < ApplicationController
  #   Validates :name, presence: true

  # Task.valid?

  # Task.create!()

  def show
    @tasks = Task.find(params[:id])
  end

  def index
    @tasks = Task.all

  end

  def new
    @task = Task.new
  end

  def edit
    # method create
    # Restaurant (o recupere le resto sur lequel on est)
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(taskt_params)
    Redirect_to tasks_path(@task)
  end

  def destroy
  # task_destroy_path(@task), data: {turbo_method: 'Delete', turbo_confirm: 'are you sure?'}
  @task = Task.find(params[:id])
  @task.destroy

  Redirect_to tasks_path(@task), status: :see_other
  end

end


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
