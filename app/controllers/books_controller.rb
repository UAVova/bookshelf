class BooksController < ApplicationController

  def index 
    @books = Book.all.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @book = Book.find(params[:id])
  end

end