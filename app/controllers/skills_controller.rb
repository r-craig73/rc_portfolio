class SkillsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user_id = current_user.id
    if @skill.save
      flash[:notice] = "Skill is now added"
      redirect_to skills_path
    else
      render :new
    end
  end

  def show
    @skill = Skill.find(params[:id])
    render :display
  end

  def edit
   @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
      if @skill.update(skill_params)
        flash[:notice] = "Skill is now updated"
        redirect_to skills_path
      else
        render :edit
      end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:notice] = "Skill and skill's details are removed"
    redirect_to skills_path
  end

private
  def skill_params
    params.require(:skill).permit(:title, :example, :user_id)
  end

end
