class BooksController < ApplicationController
    
    def index
        @books = Book.all
    end

    
    def show
        @book = Book.find(params[:id])
    end


    def add
        if request.post? 
            Book.create(book_params)
            redirect_to '/books'
        end
        else
            @book = Book.new
    end


    def edit
        @book = Book.find(params[:id])
        if request.post?
            @book.update(book_params)
            redirect_to '/books'
        end
    end
  
  
  
  private
  
    def book_params
        params.require(:book).permit(:title, :author, :price, :publisher, :memo)
    end
  
end
