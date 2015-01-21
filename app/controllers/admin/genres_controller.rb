module Admin
  class GenresController < Admin::ApplicationController

    def index
      @genres = Genre.all
    end

    def new
      @genre = Genre.new
    end

    def show
      @genre = Genre.find(params[:id])
    end

    def create
      @genre = Genre.new(genre_params)
      if @genre.save
        redirect_to admin_genres_path, message: 'Genre successfully created'
      else
        render :new
      end
    end

    def update
      @genre = Genre.find(params[:id])
      if @genre.update(genre_params)
        redirect_to admin_genres_path, message: 'Genre successfully upddated'
      else
        render :edit
      end
    end

    def destroy
      @genre = Genre.find(params[:id])
      @genre.destroy
      redirect_to admin_genres_path, message: 'Genre successfully destroyed'
    end

    def edit
      @genre = Genre.find(params[:id])
    end

    private

    def genre_params
      params.require(:genre).permit(:title)
    end

  end
end
