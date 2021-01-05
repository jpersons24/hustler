class WorkerSkillsController < ApplicationController

    def new
        @workerskill = WorkerSkill.new
        @workers = Worker.all
        @skills = Skill.all
    end

    def create
        @workerskill = WorkerSkill.create(workerskill_params(:skill_id, :worker_id))
        if @workerskill.valid?
            redirect_to worker_path(@workerskill.worker)
        else
            flash[:errors] = @workerskill.errors.full_messages
            redirect_to new_workerskill_path
        end
    end
end
