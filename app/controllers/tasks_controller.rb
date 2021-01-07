class TasksController < ApplicationController
    before_action :find_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = @current_user.tasks
    end

    def show
    end
    
    def new
        @task = Task.new
    end

    def create
        @task = @current_user.tasks.create(task_params(:user_id, :worker_id, :skill_id, :description, :cost, :completed, :deadline))
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
        @user = @current_user
    end

    def update
        if @task.update(task_params(:user_id, :worker_id, :skill_id, :description, :cost, :completed, :deadline))
            redirect_to task_path(@task)
        else
            flash[:errors] = @task.errors.full_messages
            redirect_to edit_task_path(@task)
        end
    end
    
    def destroy
        @user = @current_user
        @task.destroy
        redirect_to tasks_path
    end

    private
    def task_params(*args)
        params.require(:task).permit(*args)
    end

    def find_task
        @task = Task.find(params[:id])
    end
end
