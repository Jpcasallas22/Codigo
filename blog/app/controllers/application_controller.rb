class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "Juan", password: "123", except: [:index, :show]
 
  def index
    @articulos = Articulo.all
  end
end
