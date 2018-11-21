
require "etiqueta_nutricional/persona"
class Paciente < Persona
	attr_reader :datos_antro
	def initialize(nombre,datos_antro=nil)
		super(nombre)
		@datos_antro=datos_antro
	end
	def tratamiento()
		!@datos_antro.nil?
	end
	def clas_imc()
		if tratamiento then
			s=""
			if @datos_antro.imc<18.5
				s="Bajo"
			elsif @datos_antro.imc<24.9
				s="Adecuado"
			elsif @datos_antro.imc<29.9
				s="Sobrepeso"
			elsif @datos_antro.imc<34.9
				s="Obesidad_1"
			elsif @datos_antro.imc<39.9
				s="Obesidad_2"
			else
				s="Obesidad_3"
			end
		end
	end
	
	def to_s()
		s=super.to_s
		s+="\n"
		if tratamiento then
			s+=@datos_antro.to_s
		else
			s+="No está en tratamiento para la obesidad"
		end
	end
end	
