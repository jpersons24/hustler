class SchedulesController < ApplicationController
    before_action :find_schedule, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @schedule = Schedule.new
    end

    def create
        @schedule = Schedule.create(schedule_params(:worker_id, :task, :date, :time, :deadline))
        if @schedule.valid?
            redirect_to schedule_path(@schedule)
        else
            flash[:errors] = @schedule.errors.full_messages
            redirect_to new_schedule_path
        end
    end

    def edit
    end

    def update
        if @schedule.update(schedule_params(:worker_id, :task, :date, :time, :deadline))
            redirect_to schedule_path(@schedule)
        else
            flash[:errors] = @schedule.errors.full_messages
            redirect_to edit_schedule_path(@schedule)
        end
    end

    def destroy
        @schedule.destroy
        redirect_to worker_path(@schedule.worker)
    end

    private
    def schedule_params(*args)
        params.require(:schedule).permit(*args)
    end

    def find_schedule
        @schedule = Schedule.find(params[:id])
    end
end
