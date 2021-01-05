class SkillsController < ApplicationController

    def index
        @skills = Skill.all
    end

    def show
        @skill = Skill.find(params[:id])
    end

    def new
        @skill = Skill.new
    end

    def create
        @skill = Skill.create(skill_params(:name, :category))
        if @skill.valid?
            redirect_to skill_path(@skill)
        else
            flash[:errors] = @skill.errors.full_messages
            redirect_to new_skill_path
        end
    end

    def edit
        @skill = Skill.find(params[:id])
    end

    def update
        @skill = Skill.find(params[:id])
        if @skill.update(skill_params(:name, :category))
            redirect_to skill_path(@skill)
        else
            flash[:errors] = @skill.errors.full_messages
            redirect_to edit_skill_path
        end
    end

    private
    def skill_params(*args)
        params.require(:skill).permit(*args)
    end
end
