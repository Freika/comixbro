module Admin
  class ComixesController < Admin::ApplicationController

    def index
      @comixes = Comix.all
    end

    def new
      @comix = Comix.new
      @pages = @comix.pages.build
    end

    def show
      @comix = Comix.find(params[:id])
      @pages = @comix.pages.all
    end

    def create
      @comix = Comix.new(comix_params)
      if @comix.save
        params[:pages]['page'].each do |page|
          @comix.pages.create!(page: page, comix_id: @comix.id)
        end

        redirect_to admin_comixes_path, message: 'Comix successfully created'
      else
        render :new
      end
    end

    def update
      @comix = Comix.find(params[:id])
      if @comix.update(comix_params)
        redirect_to admin_comixes_path, message: 'Comix successfully upddated'
      else
        render :edit
      end
    end

    def destroy
      @comix = Comix.find(params[:id])
      @comix.destroy
      redirect_to admin_comixes_path, message: 'Comix successfully destroyed'
    end

    def edit
      @comix = Comix.find(params[:id])
    end

    private

    def comix_params
      params.require(:comix).permit(:title, :year, :language, :publisher_id,  :pages_attributes, { genre_ids: [] })
    end

  end
end
