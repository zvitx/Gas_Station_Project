class GasStationsController < ApplicationController
  before_action :set_gas_station, only: %i[ show edit update destroy ]

  # GET /gas_stations or /gas_stations.json
  def index
    @gas_stations = GasStation.order :name
  end

  # GET /gas_stations/1 or /gas_stations/1.json
  def show
  end

  # GET /gas_stations/new
  def new
    @gas_station = GasStation.new
  end

  # GET /gas_stations/1/edit
  def edit
  end

  # POST /gas_stations or /gas_stations.json
  def create
    @gas_station = GasStation.new(gas_station_params)

    respond_to do |format|
      if @gas_station.save
        format.html { redirect_to @gas_station, notice: "Posto criado com sucesso." }
        format.json { render :show, status: :created, location: @gas_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gas_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gas_stations/1 or /gas_stations/1.json
  def update
    respond_to do |format|
      if @gas_station.update(gas_station_params)
        format.html { redirect_to @gas_station, notice: "Posto atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @gas_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gas_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_stations/1 or /gas_stations/1.json
  def destroy
    @gas_station.destroy!

    respond_to do |format|
      format.html { redirect_to gas_stations_path, status: :see_other, notice: "Posto excluído com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_station
      @gas_station = GasStation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def gas_station_params
      params.expect(gas_station: [ :name, :address ])
    end
end
