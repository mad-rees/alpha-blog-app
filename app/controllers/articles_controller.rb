class ArticlesController < ApplicationController
  
  
  #Index actions
  def index
    @articles = Article.all
  end
  #Show action
  def show
    @article = Article.find(params[:id])
  end
end