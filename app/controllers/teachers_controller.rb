class TeachersController < ApplicationController
  def create
    @student=Studet.find(params[:student_id])
    @teacher=@student.teacher.create(teacher_params)
    redirect_to (params[:school_id],@grade,@classschool)
  end
  def show
    @student=Student.new
    @teacher=Teacher.find(params[:id])
  end
  private
  def teacher_params
    params.require(:teacher).permit(:tnumber,:tname,:tsex,:title,:temail)
  end
end
