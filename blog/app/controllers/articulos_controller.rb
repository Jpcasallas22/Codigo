
class ArticulosController < ApplicationController
  def new 
  
  end
  
    def create 
  @articulo = Articulo.new(params[:articulo])
  @articulo.save
  redirect_to @articulo
      
  end
end