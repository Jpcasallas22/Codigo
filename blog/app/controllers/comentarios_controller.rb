class ComentariosController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secreto", only: :destroy
  def create
    @articulo = Articulo.find(params[:articulo_id])
    @comentario = @articulo.comentarios.create(comentario_params)
    redirect_to articulo_path(@articulo)
  end
 
  def destroy
    @articulo = Articulo.find(params[:articulo_id])
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to articulo_path(@articulo)
  end
 
  private
    def comentario_params
      params.require(:comentario).permit(:comentarista, :contenido)
    end
end