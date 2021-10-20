class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    logger.debug(book.inspect)
    book_comment = current_user.book_comments.new(book_comment_params)
    book_comment.book_id = book.id
    book_comment.save
    redirect_to books_path
  end
  
  def destroy
  
  end

  def book_comment_params
      params.require(:book_comment).permit(:comment)
  end
end
