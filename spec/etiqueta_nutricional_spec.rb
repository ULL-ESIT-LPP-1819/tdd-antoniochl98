RSpec.describe EtiquetaNutricional do
  it "has a version number" do
    expect(EtiquetaNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe InfoEtiquetaNutricional do
	before :each do
		@x = InfoEtiquetaNutricional.new("nombre",80.2,13.8)
	end
	describe "# Obteniendo los datos de la etiqueta" do
		it "Se obtiene el nombre del producto" do
			expect("nombre").to eq(@x.nombre)
		end

		it "Se obtiene las grasas del producto" do
			expect(80.2).to eq(@x.grasas)
		end

		it "Se obtiene las grasas saturadas del producto" do
			expext(13.8).to eq(@x.gr_saturadas)
		end
	end
end
