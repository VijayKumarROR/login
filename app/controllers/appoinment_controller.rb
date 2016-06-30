class AppoinmentController < ApplicationController
def new
 
end
def create
  @staff = Staff.new(staff_params)
  if @staff.save
  flash[:notice] = "Data is successfully saved"
  end
 end
private
def staff_params
 params.require(:staff).permit(:name, :password)  
end
end
