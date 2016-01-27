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
end
