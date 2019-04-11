class GradesController < ApplicationController
  def create
    @school=School.find(params[:school_id])
    @grade=@school.grade.create(grade_params)
    redirect_to school_grade_path(@school, @grade)
  end

  def show
    @school = School.find(params[:school_id])
    @grade=Grade.find(params[:id])
    @classschool = Classschool.new
  end

  def destroy
	  @school=School.find(params[:school_id])
	  @grade=@school.grade.find(params[:id])
	  @grade.destroy
	  redirect_to school_path(@school)
  end

  private
  def grade_params
    params.require(:grade).permit(:gname)
  end
  
end
