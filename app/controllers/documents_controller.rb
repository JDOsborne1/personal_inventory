class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end
   
  def show
    @document = Document.find(params[:id])
  end
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(article_params)
    
    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  private
    def article_params
       params.require(:document).permit(:name, :attachment)
    end
end

