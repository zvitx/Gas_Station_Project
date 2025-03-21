require 'rails_helper'

RSpec.describe PumpsController, type: :controller do
    describe "Valida nova bomba" do
        context "Informações completas da bomba" do
            it "valida bomba true" do
                stationTemp = GasStation.create(name: "Teste", address: "Rua Teste", id: 1)
                pump1 = Pump.new(fuel_type: "Gasolina comum", capacity: 100, gas_station_id: stationTemp.id)

                expect(pump1.valid?).to be true
                expect(response).to have_http_status(200)
            end
        end
        context "Informações faltando da bomba" do
            it "valida bomba false" do
                pump2 = Pump.new(fuel_type: nil, capacity: nil, gas_station_id: nil)

                expect(pump2.valid?).to eq(false)
            end
        end
    end
end