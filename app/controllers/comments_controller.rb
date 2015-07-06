class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comments_params)
    @vote = Vote.new(votes_params)
    @comment.book = @vote.book = Book.find(params[:book_id])
    @comment.user_id = @vote.user_id  = current_user.id
    respond_to do |format|
      if @comment.valid? && @vote.valid?
        @comment.save
        @vote.save
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

  def votes_params
    params.require(:vote).permit(:rating)
  end
end