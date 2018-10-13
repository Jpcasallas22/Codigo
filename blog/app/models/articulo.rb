class Articulo < ActiveRecord::Base
  validates :titular,presence: true,
  length: {minimun: 6}
end
