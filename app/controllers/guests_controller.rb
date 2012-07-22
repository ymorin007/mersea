class GuestsController < ApplicationController

  def index
    render :layout => 'home'

  end

  def multimedia
    #render :layout => 'application'
  end

  def aboutus
    #render :layout => 'application'
  end
  
  def aboutstmaarten
    #render :layout => 'application'
  end
  
  def contactus
    #render :layout => 'application'
  end
  
  def included
    # render :layout => 'application'
  end

end