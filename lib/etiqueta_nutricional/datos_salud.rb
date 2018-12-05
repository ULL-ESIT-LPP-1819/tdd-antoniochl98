class DatosSalud
	include Comparable
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
	def to_s()
		s="talla= #{@talla}\n"
		s+="peso= #{@peso}\n"
		s+="edad= #{@edad}\n"
		s+="sexo= #{@sexo}\n"
		s+="cintura= #{@cintura}\n"
		s+="cadera= #{@cadera}\n"
		s+="imc= #{self.imc}\n"
		s+="porcentaje de grasa= #{self.porc_grasa}%\n"
		s+="Relación Cintura/Cadera= #{self.rcc}\n"
	end

	def <=>(other)
		return nil unless other.instance_of? DatosSalud
		imc()<=>other.imc
	end
end
