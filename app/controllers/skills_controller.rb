class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def new
    @skill = Skill.new
  end

  def show
    @skill = Skill.find(params[:id])
    render :display
  end

  def update
    @skill = Skill.find(params[:id])
      if @skill.update(skill_params)
        flash[:notice] = "The skill is updated"
        redirect_to skills_path
      else
        render :edit
      end
  end

end
