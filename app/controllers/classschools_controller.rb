class ClassschoolsController < ApplicationController
  def create
    @grade=Grade.find(params[:grade_id])
    @classschool=@grade.classschool.create(classschool_params)
    redirect_to school_grade_classschool_path(params[:school_id],@grade,@classschool)
  end
  def show
    @student=Student.new
    @classschool=Classschool.find(params[:id])
  end
  private
  def classschool_params
    params.require(:classschool).permit(:cname,:clocationgrade)
  end
end
