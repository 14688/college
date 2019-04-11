class StudentsController < ApplicationController

  def create
    @classschool=Classschool.find(params[:classschool_id])
    @student=@classschool.student.create(student_params)
    redirect_to school_grade_classschool_student_path(params[:school_id],params[:grade_id],@classschool,@student)
  end

  def show
    @teacher=Teacher.new
    @student=Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:unumber,:uname,:usex,:uage,:uemail)
  end
end
