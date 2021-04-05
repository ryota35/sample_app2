class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
  end

  def show
  end

  private

  def article_params
    params.require(:article).parmit(:user_id, :admin_id, :title, :body, :level)
  end

end
