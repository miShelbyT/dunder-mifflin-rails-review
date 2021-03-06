class EmployeesController < ApplicationController
    
	def show	
		@employee = Employee.find(params[:id])
	end

	def edit	
		@employee = Employee.find(params[:id])
	end

	def index
    @employees = Employee.all 
	end
		
	def new
		@employee = Employee.new
	end
    
	def create 
    @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id))
    @employee.save
    redirect_to employee_path(@employee)
	end
		
	def update
		@employee = Employee.find(params[:id])
		@employee.update(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id))
    redirect_to employee_path(@employee)
	end


end
