class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "Your skill is now added"
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
        flash[:notice] = "The skill is updated"
        redirect_to skills_path
      else
        render :edit
      end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:notice] = "The skill and details are removed"
    redirect_to skills_path
  end

private
  def skill_params
    params.require(:skill).permit(:title, :example)
  end

end
