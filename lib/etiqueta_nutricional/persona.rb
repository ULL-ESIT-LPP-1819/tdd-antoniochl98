
class Persona
	attr_reader :nombre
	def initialize(nombre)
		@nombre=nombre
	end
	def to_s()
		s="Nombre: #{@nombre}"
	end
end
