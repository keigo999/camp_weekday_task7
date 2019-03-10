class ArticlesController < ApplicationController
  before_action :set_up, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
    @article = Article.find(article_params)
    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_up
    @article = Article.find(params[:id])
  end

end
