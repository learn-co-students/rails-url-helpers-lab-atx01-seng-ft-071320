class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @active = nil
    if @student.active == true
      @active = "active"
    else
      @active = "inactive"
    end
  end

  def activate_student
    @student = Student.find(params[:id])
    if @student.active == true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
