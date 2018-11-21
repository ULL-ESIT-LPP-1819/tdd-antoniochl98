class DatosSalud
	attr_accessor:talla, :peso, :edad, :sexo, :cintura, :cadera
	def initialize(talla, peso, edad, sexo, cintura, cadera)
		@talla, @peso, @edad, @sexo, @cintura, @cadera=talla, peso, edad, sexo, cintura, cadera
	end
	def to_s()
		"talla:#{@talla}, peso:#{@peso}, edad:#{@edad}, sexo:#{@sexo}, cintura:#{@cintura}, cadera:#{@cadera}"
	end
	def imc()
		@peso/(@talla**2)
	end
	def porc_grasa()
		a=0
		if @sexo=='H'
			a=1
		end
		(1.2*self.imc().round(2))+(0.23*@edad)-(10.8*a)-5.4
	end
	def rcc()
		@cintura/@cadera
	end
end
