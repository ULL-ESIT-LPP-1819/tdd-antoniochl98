
require "etiqueta_nutricional/persona"
class Paciente < Persona
	attr_reader :datos_antro
	def initialize(nombre,datos_antro=nil,act_fis="reposo")
		super(nombre)
		@datos_antro=datos_antro
		@factor_act_fis=0
		if act_fis=="ligera"
			@factor_act_fis=0.12
		elsif act_fis="moderada"
			@factor_act_fis=0.27
		elsif act_fis="intensa"
			@factor_act_fis=0.54
		end

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

	def gasto_ener_basal()
		gasto=0
		if tratamiento then
			gasto=(10*@datos_antro.peso())+(6.25*@datos_antro.talla()*100)-(5*@datos_antro.edad())
			if @datos_antro.sexo == 'H'
				gasto=gasto+5
			else
				gasto=gasto-161
			end
		end
		gasto
	end

	def efec_termogeno()
		gasto=gasto_ener_basal()*0.10
	end

	def gasto_act_fis()
		gasto=gasto_ener_basal()*@factor_act_fis
	end

	def gasto_ener_total()
		gasto=gasto_ener_basal()+efec_termogeno()+gasto_act_fis()
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
