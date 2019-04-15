# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos
# que ofrece una tienda junto con los precios de las tallas L, M, S y XS
# Se solicita:
#             Optimizar el código implementando el operador splat al momento de instanciar los productos
#             Generar un método que permita calcular el promedio de precio por producto

# Product
class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(*name, large, medium, small, xsmall)
    @name = name.to_s
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def average
    (@large + @medium + @small + @xsmall)/4
  end
end



products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.chomp.split(', ')
  #products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
  products_list << Product.new(*ls)
end

products_prices = []
products_list.each do |prod|
    products_prices << prod.large
    products_prices << prod.medium
    products_prices << prod.small
    products_prices << prod.xsmall
end

# print products_list
products_list.each do |prod|
  puts "El producto #{prod.name} tiene un valor promedio de $#{prod.average}"
end