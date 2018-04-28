class InterestsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @interests = Interest.all
    render :index
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      flash[:notice] = "Your interest is now added"
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
        flash[:notice] = "The interest is updated"
        redirect_to interests_path
      else
        render :edit
      end
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    flash[:notice] = "The interest and details are removed"
    redirect_to interests_path
  end

private
  def interest_params
    params.require(:interest).permit(:heading, :body)
  end

end
