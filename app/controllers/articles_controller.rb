class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    flash[:notice] = "Article was successfully created"
    if @article.save
    else
      render :new
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

#redirect_to_root_path, notice: 'Article was successfully created'