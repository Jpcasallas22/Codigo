
class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
  end 
  
   def show
    @articulo = Articulo.find(params[:id])
   end
  
   def new 
    @articulo = Articulo.new
    end
  
  def edit
  end
  
  def create 
    @articulo = Articulo.new(articulo_params)
    if  @articulo.save
      redirect_to @articulo
    else 
      render 'new'
    end
  end  
  
  private 
  def articulo_params
    params.require(:articulo).permit(:titular, :contenido)
  end
end