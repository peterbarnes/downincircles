class StaticPagesController < ApplicationController

  def index
    
  end

  def about
    
  end

  def contact
    
  end

  def music
    
  end

  def sendit
    if Band.email(params).deliver
      flash[:success] = "Your message has been sent, we will get back to you as soon as we can!"
    else
      flash[:danger] = "Something went wrong"
    end
      redirect_to contact_path
  end
end
