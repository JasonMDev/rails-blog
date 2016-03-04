class StaticPagesController < ApplicationController
  def landing_page
  	@featured_article = Article.first
  end

  def index
  end

  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@name, @email, @message).deliver_now    
  end

end
