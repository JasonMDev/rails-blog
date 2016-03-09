class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    if params[:q]
      search_term = params[:q]
      # Search for the term in DEVELOPMENT using SQL using "LIKE"
      @articles = Article.where("text LIKE ?", "%#{search_term}%").paginate(page: params[:page], per_page: 2) if Rails.env.development?
      # Search for the term in PRODUCTION env. using PostGRES "ilike"
      @articles = Article.where("text ilike ?", "%#{search_term}%").paginate(page: params[:page], per_page: 2) if Rails.env.production?
      
    else
      # All products
      @articles = Article.paginate(page: params[:page], per_page: 2)     
    end 
    
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    # Try article without param.
    @article = Article.find(params[:id])
    @comments = @article.comments.order("created_at DESC").paginate(page: params[:page], per_page: 3)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.author =  @article.user.first_name + " " + @article.user.last_name   

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :author, :description, :image_url, :text, :user_id, :edited, :published)
    end
end
