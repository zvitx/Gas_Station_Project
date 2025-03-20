require 'rails_helper'

RSpec.describe GasStationsController, type: :controller do
  describe "valida novo posto" do 
    context "Informações completas do posto" do
      it "valida posto true" do
        station1 = GasStation.new(name: "Rol", address: "Av Andradas")
  
        expect(station1.valid?).to eq(true)
      end
    end
    context "Informações faltando" do
      it "valida posto false" do
        station2 = GasStation.new(name: nil, address: "Av Pedro II")

        expect(station2.valid?).to eq(false)
      end
    end
  end
end
