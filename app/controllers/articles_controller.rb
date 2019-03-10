class ArticlesController < ApplicationController
  before_action :set_up, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.find(article_params)
    @article.save
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_up
    @article = Article.find(params[:id])
  end

end
