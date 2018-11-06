RSpec.describe EtiquetaNutricional do
  it "has a version number" do
    expect(EtiquetaNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe "# Almacenamiento de los párametros de la etiqueta" do
		it "Se introducen en el constructor" do
		x=InfoEtiquetaNutricional.new("nombre")
	end

end

RSpec.describe InfoEtiquetaNutricional do
	before :each do
		@x = InfoEtiquetaNutricional.new("nombre")
	end
	describe "# Obteniendo los datos de la etiqueta" do
		it "Se obtie el nombre del producto" do
			expect("nombre").to eq(@x.nombre)
		end
	end
end
