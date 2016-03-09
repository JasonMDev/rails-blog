class CommentsController < ApplicationController

	def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    @comment.commenter =  @comment.user.first_name + " " + @comment.user.last_name 
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

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def destroy
  	@article =Article.find(params[:article_id])
  	@comment = @article.comments.find(params[:id])
  	@comment.destroy
  	redirect_to article_path(@article)
  end

  def update
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])    
    respond_to do |format|
      if @comment.update_attributes(comment_params)
        format.html { redirect_to edit_article_comment_path(@article, @comment), notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        #format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :rating, :user_id, :reviewed, :approved)
    end
    
end
