class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      format.csv do
        formated_csv = Book.generate_csv(@books)
        render plain: formated_csv
      end
      format.json do
        render json: @books

      end
    end
  end




end
