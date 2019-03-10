class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
