class ComixesController < ApplicationController
  before_action :set_comix, only: [:show, :edit, :update, :destroy]

  def index
    @comixes = Comix.all
  end

  def show
    @pages = @comix.pages.paginate(:page => params[:page], :per_page => 1)
    @current_page_id = params[:page].to_i
  end

  def new
    @comix = Comix.new
  end

  def edit
  end

  def create
    @comix = Comix.new(comix_params)

    respond_to do |format|
      if @comix.save
        redirect_to @comix, message: 'Comix was successfully created.'
      else
        render :new
      end
    end
  end

  def update
    respond_to do |format|
      if @comix.update(comix_params)
        redirect_to @comix, message: 'Comix was successfully updated.'
      else
        render :edit
      end
    end
  end

  def destroy
    @comix.destroy
    redirect_to comixes_url, message: 'Comix was successfully destroyed.'
  end

  private
    def set_comix
      @comix = Comix.find(params[:id])
    end

    def comix_params
      params[:comix]
    end
end
