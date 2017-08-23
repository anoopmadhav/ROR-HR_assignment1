class EmployeeController < ApplicationController
  def list
  	@employees = Employee.all
  end

  def profile
  	employees = Employee.all
  	employee = []
  	employees.each{|emp| employee.push(emp) if emp[:name] == params[:name]}
  	@employee = employee.first
  end
end
