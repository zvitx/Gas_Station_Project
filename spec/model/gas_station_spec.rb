require 'rails_helper'

RSpec.describe GasStationsController, type: :controller do
  describe "Valida novo posto" do 
    context "Informações completas do posto" do
      it "valida posto true" do
        station1 = GasStation.new(name: "Fle(x) Rol", address: "Av Andradas", id: 1)
  
        expect(station1.valid?).to eq(true)
      end
    end
    context "Informações faltando" do
      it "valida posto false" do
        station2 = GasStation.new(name: nil, address: "Av Pedro II")

        expect(station2.valid?).to eq(false)
      end
    end
    context "Verifica se o posto contém informações específicas" do
      it "Verifica se o posto tem nome especifico" do
        station = GasStation.new(name: "Fle(x) Rol", address: "Av Andradas", id: 1)

        expect(station.name).to include("Rol")

        expect(station.address).to include("Andradas")
      end
    end
  end
end
