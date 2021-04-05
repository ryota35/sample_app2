class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.user_id = current_user.id
    article.save
  end

  def show
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :level)
  end

end
