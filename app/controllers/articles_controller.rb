class ArticlesController < ApplicationController

  def index

  end

  def create
    # Article.create(article_params)
    # redirect_to articles_path
    p article_params
    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

private
  def article_params
    params.require(:article).permit(:title, :description, user_id: session[:user_id], category_id: 1)
  end
end
