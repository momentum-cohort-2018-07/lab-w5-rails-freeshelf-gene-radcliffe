class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update ]
    
  def index
  end

  def list
    @books = Book.all
  end
  
  def show
    #find_book(params[:id])
  end

  def new
    
    @book = Book.new
    
  end
  def view

  end
  def create

    @book = Book.new(book_params)
    if @book.save 
      
      redirect_to @book
    else
      render 'new'
    end
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
 
    redirect_to list_book_path
  end
  def edit
  end
  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description)
  end
  def find_book
    
    @book = Book.find(params[:id])
  end
end
