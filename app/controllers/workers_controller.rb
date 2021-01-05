class WorkersController < ApplicationController
    before_action :find_worker, only: [:show, :edit, :update, :destroy]

    def index
        @workers = Worker.all
    end

    def show
    end

    def new
        @worker = Worker.new
    end

    def create
        @worker = Worker.create(worker_params(:name, :username, :password, :age, :photo, :bio))
        if @worker.valid?
            redirect_to worker_path(@worker)
        else
            flash[:errors] = @worker.errors.full_messages
            redirect_to new_worker_path
        end
    end
    
    def edit
    end

    def update
        if @worker.update(worker_params(:name, :username, :password, :age, :photo, :bio))
            redirect_to worker_path(@worker)
        else
            flash[:errors] = @worker.errors.full_messages
            redirect_to edit_worker_path(@worker)
        end
    end

    def destroy
        @worker.destroy
        redirect_to workers_path
    end

    private
    def worker_params(*args)
        params.require(:worker).permit(*args)
    end

    def find_worker
        @worker = Worker.find(params[:id])
    end
end
