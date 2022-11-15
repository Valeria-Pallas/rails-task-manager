class TasksController < ApplicationController
  #   Validates :name, presence: true

  # Task.valid?

  # Task.create!()
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # Needed to instantiate the form_with
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
    # tasks_path
  end

  def edit
    # method create
    # Restaurant (o recupere le resto sur lequel on est)
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(taskt_params)
    redirect_to task_path(@task)
  end

  def destroy
    # task_destroy_path(@task), data: {turbo_method: 'Delete', turbo_confirm: 'are you sure?'}
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path(@task), status: :see_other
  end
end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
