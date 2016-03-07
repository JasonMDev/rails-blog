class CommentsController < ApplicationController

	http_basic_authenticate_with name: "User", 
															 password: "Secret", 
															 only: :destroy

	def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    #@comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @article, notice: 'Review was created succesfully.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { redirect_to @article, alert: 'Review was not saved succesfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }

      end
    end  



  end

  def destroy
  	@article =Article.find(params[:article_id])
  	@comment = @article.comments.find(params[:id])
  	@comment.destroy
  	redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :rating)
    end
    
end
