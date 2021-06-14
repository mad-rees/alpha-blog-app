class ArticlesController < ApplicationController
  
  
  #Index actions
  def index
    @articles = Article.all
  end
  #Show action
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    render plain: params[:article]
    
  end
end