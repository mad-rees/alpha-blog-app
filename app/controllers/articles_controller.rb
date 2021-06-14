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
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to article_path(@article)
  end
end