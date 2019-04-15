def new_catalogue(file_name, new_file_name)
  data = []
  File.open(file_name, 'r') do |file|
    data = file.readlines.map do |prod|
      prod.chomp.split(', ')
    end
  end
  #print data
  data.each { |prod| prod.delete_at(prod.size - 1) }
  #print data
  File.open(new_file_name, 'w') do |file|
    data.each do |name,large,medium,small|
      file.puts "#{name}, #{large}, #{medium}, #{small}"
    end
  end
  puts "Su archivo '#{new_file_name}' ha sido creado"
end

new_catalogue('catalogo.txt', 'nuevo_catalogo.txt')