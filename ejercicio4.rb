class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end
  def ladrar
    puts "#{nombre} está ladrando!"
  end
end

# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
propiedades = {nombre: 'Dobby', raza: 'Elfo', color: 'Café Claro'}

# dog_dobby = Dog.new('Dobby','Elfo','Piel')
dog_dobby = Dog.new(propiedades)
puts dog_dobby.nombre
dog_dobby.ladrar