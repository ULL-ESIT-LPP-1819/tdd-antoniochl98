
require "etiqueta_nutricional/persona"
class Paciente < Persona
	attr_reader :datos_antro
	def initialize(nombre,datos_antro=nil)
		super(nombre)
		@datos_antro=datos_antro
	end
end	
