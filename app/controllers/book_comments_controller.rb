class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    book_comment = current_user.book_comments.new(book_comment_params)
    book_comment.book_id = book.id
    if book_comment.save
      flash[:notice] = "save was done"
      redirect_to books_path
    else
      redirect_to book_path(book.id)
    end
  end
  
  def destroy
  
  end

  def book_comment_params
      params.require(:book_comment).permit(:comment)
  end
end
