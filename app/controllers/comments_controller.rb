class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comments_params)
    @comment.book = Book.find(params[:book_id])
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.book }
      else
        format.html { 
          @book = @comment.book
          render 'books/show'
        }
      end
      format.js { }
    end
  end


  private

  def comments_params
    params.require(:comment).permit(:content)
  end
end