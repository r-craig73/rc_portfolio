class InterestsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @interests = Interest.all
    render :index
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.user_id = current_user.id
    if @interest.save
      flash[:notice] = "Interest is now added"
      redirect_to interests_path
    else
      render :new
    end
  end

  def show
    @interest = Interest.find(params[:id])
    render :display
  end

  def edit
   @interest = Interest.find(params[:id])
  end

  def update
    @interest = Interest.find(params[:id])
      if @interest.update(interest_params)
        flash[:notice] = "Interest is updated"
        redirect_to interests_path
      else
        render :edit
      end
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    flash[:notice] = "Interest and interest's details are removed"
    redirect_to interests_path
  end

private
  def interest_params
    params.require(:interest).permit(:heading, :body, :user_id)
  end

end
