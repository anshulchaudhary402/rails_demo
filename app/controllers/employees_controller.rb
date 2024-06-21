class EmployeesController < ApplicationController
  before_action :set_employee, only:[:edit,:update,:show]
  def index
    @employees = Employee.all
  end
  def new
    @employee = Employee.new
  end
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path,notice:'Employee has been Created Successfully 👍'
    else
      render :new
    end
  end
  def edit


  end
  def update

    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee has been Update Successfully 🚀'
    else
     render :edit
    end
  end

  def show


  end
  private
  def employee_params
    params.require(:employee).permit(:first_name,:middle_name,:last_name,:personal_email,:city,:state,:country,:pincode,:address1,:address2,:date_of_birth, :date_of_joining,:job_title,:about)
  end
  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
      redirect_to employees_path, notice: error
  end
end
