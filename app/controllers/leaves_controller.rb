class LeavesController < ApplicationController
before_action :set_leave, :only => [ :show, :edit, :update, :destroy]
before_action :require_login

  def index
    @leaves = Leaves.all
  end

  def show
  end

  def new
    @leave = Leaves.new

    @leave.start_date = Date.today
    @leave.end_date = 0.days.from_now.to_date

  end

  def create
    @leave = Leaves.new(leave_params)

    if @leave.save
      flash[:notice] = "Leave was successfully created."
      redirect_to :action => :index
    else
      @errors = @leave.errors.full_messages
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @leave.update(leave_params)
      flash[:notice] = "Leave was successfully updated."
      redirect_to :action => :show
    else
      @errors = @leave.errors.full_messages
      render :action => :edit
    end
  end

  def destroy
    @leave.destroy
    flash[:alert] = "Leave was successfully deleted"
    redirect_to :action => :index
  end

  private

  def leave_params
    params.require(:leaves).permit(:start_date, :end_date, :student_id)
  end

  def set_leave
    @leave = Leaves.find(params[:id])
  end
end
