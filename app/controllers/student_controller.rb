class StudentController < ApplicationController
  before_action :set_student, :only => [ :show, :edit, :update, :destroy]
  before_action :require_login

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:notice] = "Student #{@student.name} was successfully created."
      redirect_to :action => :index
    else
      @errors = @student.errors.full_messages
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      flash[:notice] = "Student #{@student.name} was successfully updated."
      redirect_to :action => :show
    else
      @errors = @student.errors.full_messages
      render :action => :edit
    end
  end

  def destroy
    @student.destroy
    flash[:alert] = "Student '#{@student.name}' was successfully deleted"
    redirect_to :action => :index
  end

  private

  def student_params
    params.require(:student).permit(:name, :description, :course)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
