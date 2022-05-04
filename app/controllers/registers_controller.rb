class RegistersController < ApplicationController
    def index
        @students = Student.all 
    end
    def new
        @student = Student.new
    end
    def create
        student = Student.new(student_params)
        student.save 
        redirect_to root_path
    end  
    private
    def student_params
        params.require(:student).permit(:student_name, :password, :student_id, :dob, :choose_year, :check_type, :select_branch, :address)
    end
end

