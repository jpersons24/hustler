class TasksController < ApplicationController
    before_action :find_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = Task.all
    end

    def show
    end
    
    def new
        @task = Task.new
    end

    def create
        @task = Task.create(task_params(:user_id, :worker_id, :description, :cost, :accepted, :completed))
        if @task.valid?
            redirect_to task_path(@task)
        else
            flash[:errors] = @task.errors.full_messages
            redirect_to new_task_path
        end
    end

    def edit
        @users = User.all
        @workers = Worker.all
    end

    def update
        if @task.update(task_params(:user_id, :worker_id, :description, :cost, :accepted, :completed))
            redirect_to task_path(@task)
        else
            flash[:errors] = @task.errors.full_messages
            redirect_to edit_task_path(@task)
        end
    end
    
    def destroy
        @task.destroy
        redirect_to tasks
    end

    private
    def task_params(*args)
        params.require(:task).permit(*args)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
