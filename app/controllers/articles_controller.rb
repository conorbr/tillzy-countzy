class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = article.new(params[:article])

    @article.save
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def create
  render plain: params[:article].inspect
  end

  class ArticlesController < ApplicationController
    def show
      @article = Article.find(params[:id])
    end

    def new
    end
