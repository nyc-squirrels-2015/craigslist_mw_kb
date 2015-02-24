class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    # current_user.articles.build(article_params) [this does the same thing]
    current_user.articles << Article.create(article_params)
    redirect_to '/articles'
  end

  def new
    @article    = Article.new
    @categories = Category.all
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.update_attributes(article_params)
    redirect_to articles_path
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    @article.destroy
    redirect_to articles_path
  end

private
  def article_params
    params.require(:article).permit(:title, :description, :category_id)
  end
end
