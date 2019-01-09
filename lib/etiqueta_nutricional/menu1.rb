require "etiqueta_nutricional/info_etiqueta_nutricional"
class Menu1
  attr_accessor :name, :desayuno, :almuerzo, :cena

  def initialize(name, &block)
    @name = name
    @desayuno = []
    @almuerzo = []
    @cena = []

    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end
  end

  def crea_plato(nut_val)
	   plato=InfoEtiquetaNutricional.new(nut_val[:descripcion],nut_val[:grasas],nut_val[:grasas_saturadas],nut_val[:carbohidratos],nut_val[:azucar],nut_val[:proteinas],nut_val[:sal],nut_val[:grasas_monoinsaturadas],nut_val[:grasas_poliinsaturadas],nut_val[:polialcoholes],nut_val[:almidon],nut_val[:fibra],nut_val[:vitaminas],nut_val[:porcion],nut_val[:gramos])
  end

  def desayuno(nut_val={})
 	  @desayuno << crea_plato(nut_val)
  end

  def almuerzo(nut_val={})
	  @almuerzo << crea_plato(nut_val)
  end

  def cena(nut_val={})
	  @cena << crea_plato(nut_val)
  end

  def to_s
	  output=""
	  output << @name
	  output << "\tComposición nutricional\n"
	  output << "=======================================================================\n"
	  output << "\t\t\tgrasas\tcarbohidratos\tproteinas\tfibra\tsal\tvalor energético\n"
	  output << "Desayuno\n"
	  @desayuno.each{|x| output<<"#{x.nombre}\t#{x.grasas}\t#{x.hidratos}\t\t#{x.proteinas}\t\t#{x.fbr_alim}\t#{x.sal}\t#{x.val_ener_kcal}\n"}
	  output << "Almuerzo\n"
          @almuerzo.each{|x| output<<"#{x.nombre}\t#{x.grasas}\t#{x.hidratos}\t\t#{x.proteinas}\t\t#{x.fbr_alim}\t#{x.sal}\t#{x.val_ener_kcal}\n"}
	  output << "Cena\n"
          @cena.each{|x| output<<"#{x.nombre}\t#{x.grasas}\t#{x.hidratos}\t\t#{x.proteinas}\t\t#{x.fbr_alim}\t#{x.sal}\t#{x.val_ener_kcal}\n"}
	  return output
  end

end
