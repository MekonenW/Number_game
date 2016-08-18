class NumbersController < ApplicationController
  def index
  	if !session.has_key?(:number)
   	session[:number] = rand(1..100)
  	end
  end

  def guess
  	if params[:number].to_i < session[:number]
  		flash[:failure] = "Too low"
  
  	elsif params[:number].to_i > session[:number]
  		flash[:failure] = "Too high"
  
  	else
  		flash[:success] = "Good job!"
  	end	
  	  	redirect_to '/'
  end

  def reset
  	reset_session
  	redirect_to '/'
  end

end
