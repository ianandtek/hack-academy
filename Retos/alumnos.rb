=begin
54. Escriba un programa en Ruby que gestione un array de 15 alumnos con sus códigos,
nombres, apellidos, direcciones, teléfonos y correos. Las operaciones de usuarios
posibles son crear, modificar, borrar, buscar y ordenar por código.
=end

require 'colorize'

def add_students(code,name,lastname,address,phone,mail) #Crea hash con las caracteristicas del estudiante
    student = {
      code: code,
      name: name,
      lastname: lastname,
      address: address,
      phone: phone,
      mail: mail
    }
end

def ask_student_data(code) #Pregunta al usuario para luego crear hash
  puts "Introduzca Nombre"
  name = gets.chomp
  puts "Introduzca Apellido"
  lastname = gets.chomp
  puts "Introduzca Direccion"
  address = gets.chomp
  puts "Introduzca Telefono"
  phone = gets.chomp
  puts "Introduzca Correo"
  mail = gets.chomp
  add_students(code,name,lastname,address,phone,mail)
end

def search_student(students,key,value)
  students.each { |h| print h } #if students[key] == value  }
end

def select_value(students,key,value) #Devuelve informacion del usuario requerida
  students.select { |h| students[key] == value }
end

def search_index(students,key,value) #Devuelve indice de donde esta el key
  return students.index {|h| h[key] == value }
end

def search_student_index(students) #Pregunta al usuario, retorna index
  case which_search?
    when "codigo"
      puts "Introduzca codigo"
      return search_index(students,:code,gets.chomp.to_i)
    when "nombre"
      puts "Introduzca nombre"
      return search_index(students,:name,gets.chomp)
    when "apellido"
      puts "Introduzca Apellido"
      return search_index(students,:lastname,gets.chomp)
    when "direccion"
      puts "Introduzca direccion"
      return search_index(students,:address,gets.chomp)
    when "telefono"
      puts "Introduzca Telefono"
      return search_index(students,:phone,gets.chomp)
    when "correos"
      puts "Introduzca Correo"
      return search_index(students,:mail,gets.chomp)
  end
end

def delete_student!(students) #elimina al estudiante usando el index del array
  students.delete_at(search_student_index(students))
end

def organize_students(students) #organiza a los estudiantes
  search_student(students)

end

def which_search? #tipo de busqueda, devuelve string
  puts "Desea buscar por codigo, nombre, apellido, direccion, telefono o correos"
  return gets.chomp
end

def modify_student!(students) #modifica una posicionarreglo students
  index = search_student_index(students)
  students[index] = ask_student_data(index)
end

def main
  students = []
  loop do
    puts "*"*30
    puts "1.- Crear Estudiante(s)"
    puts "2.- Modificar Estudiante"
    puts "3.- Borrar Estudiante"
    puts "3.- Buscar Estudiante"
    puts "4.- Ordenar estudiantes por codigo"
    puts "5.- Mostrar estudiantes"
    puts "s para salir"
    puts "*"*30
    menu = gets.chomp
      case menu
      when "1"
          puts "Cuantos estudiantes quieres crear?"
          for i in 0..gets.chomp.to_i - 1 do
            puts "Estudiante ##{i+1}"
            students << ask_student_data(i)
          end
        when "2"
          modify_student!(students)
        when "3"
          delete_student!(students)
        when "4"
          search_student(students)
        when "5"
          p students
        when "s"
          exit
        else
          puts "Opcion Incorrecta".red
      end
  end
end

def debug
  students = []
  students << add_students(0,"prueba","prueba","prueba","prueba","prueba")
  p students
  puts search_student_index(students)
end

main
#debug
