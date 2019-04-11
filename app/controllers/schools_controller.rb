class SchoolsController < ApplicationController
	def index
		@schools=School.all
	end

	def show
		@school=School.find(params[:id])
	end

	def new
		@school=School.new
	end


	def edit
		@school=School.find(params[:id])
	end

	def create
		@school=School.new(params_school)
		if @school.save
			redirect_to @school
		else
			render 'new'
		end
	end

	def update
		@school=School.find(params[:id])
		if @school.update(params_school)
			redirect_to @school
		else
			render 'edit'
		end
	end

	def destroy
		@school=School.find(params[:id])
		@school.destroy
		redirect_to schools_path
	end

	private
	def params_school
		params.require(:school).permit(:sname,:ssite,:sphone)
	end
end
