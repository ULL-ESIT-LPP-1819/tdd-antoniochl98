RSpec.describe EtiquetaNutricional do
  it "has a version number" do
    expect(EtiquetaNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe "# Almacenamiento del nombre de la etiqueta" do
	it "Se introduce en el constructor" do
		x=InfoEtiquetaNutricional.new("nombre")
	end

end
