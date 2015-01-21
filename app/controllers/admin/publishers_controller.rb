module Admin
  class PublishersController < Admin::ApplicationController

    def index
      @publishers = Publisher.all
    end

    def new
      @publisher = Publisher.new
    end

    def show
      @publisher = Publisher.find(params[:id])
    end

    def create
      @publisher = Publisher.new(publisher_params)
      if @publisher.save
        redirect_to admin_publishers_path, message: 'Publisher successfully created'
      else
        render :new
      end
    end

    def update
      @publisher = Publisher.find(params[:id])
      if @publisher.update(publisher_params)
        redirect_to admin_publishers_path, message: 'Publisher successfully upddated'
      else
        render :edit
      end
    end

    def destroy
      @publisher = Publisher.find(params[:id])
      @publisher.destroy
      redirect_to admin_publishers_path, message: 'Publisher successfully destroyed'
    end

    def edit
      @publisher = Publisher.find(params[:id])
    end

    private

    def publisher_params
      params.require(:publisher).permit(:name)
    end

  end
end
