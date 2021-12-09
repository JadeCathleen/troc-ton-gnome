class GnomesController < ApplicationController

  def index
    @gnomes = Gnome.all
    @gnome = Gnome.find(params[:id])
  end

  def new
    @gnome = Gnome.new
  end

  def create
    @gnome = Gnome.new(gnome_params)
    if @gnome.save
      redirect_to gnomes_path
    else
      render :new
    end
  end

  def edit
    @gnome = Gnome.find(params[:id])
  end

  def update
    @gnome = Gnome.update(gnome_params)
    if @gnome.save
      redirect_to gnomes_path
    else
      render :edit
    end
  end

  def destroy
    @gnome = Gnome.find(params[:id])
    @gnome.destroy
  end

  private

  def gnome_params
    params.require(:gnome).permit(:name, :price, :height, :width, :small_description, :big_description)
  end
end
