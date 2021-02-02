class SessionsController < ApplicationController
  def new

  end
 
  def create
     emp = Employee.find_by_email(params[:email])
  	if emp && emp.authenticate(params[:password])
     session[:emp_id] = emp.id
     redirect_to(action: 'welcome')
     
   	else
     flash.now[:alert] = "Email or password is invalid"
     render "new"
   	end
 end

 def destroy
   session[:emp_id] = nil
   redirect_to root_url, notice: "Logged out!"
 end
 def welcome
 end

end
