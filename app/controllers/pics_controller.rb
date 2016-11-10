class PicsController < ApplicationController

  def index
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: "Yes It was posted!"
    else
      render 'new'
    end
  end

  def show
  end

  private
  def pic_params
    params.require(:pic).permit(:title, :description)
  end
end
