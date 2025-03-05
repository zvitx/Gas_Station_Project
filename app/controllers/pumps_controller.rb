class PumpsController < ApplicationController
  before_action :set_pump, only: %i[ show edit update destroy ]

  # GET /pumps or /pumps.json
  def index
    @pumps = Pump.all
  end

  # GET /pumps/1 or /pumps/1.json
  def show
  end

  # GET /pumps/new
  def new
    @pump = Pump.new
  end

  # GET /pumps/1/edit
  def edit
  end

  # POST /pumps or /pumps.json
  def create
    @pump = Pump.new(pump_params)

    respond_to do |format|
      if @pump.save
        format.html { redirect_to @pump, notice: "Bomba criada com sucesso." }
        format.json { render :show, status: :created, location: @pump }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pumps/1 or /pumps/1.json
  def update
    respond_to do |format|
      if @pump.update(pump_params)
        format.html { redirect_to @pump, notice: "Bomba atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @pump }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pumps/1 or /pumps/1.json
  def destroy
    @pump.destroy!

    respond_to do |format|
      format.html { redirect_to pumps_path, status: :see_other, notice: "Bomba excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pump
      @pump = Pump.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pump_params
      params.expect(pump: [ :fuel_type, :capacity, :gas_station_id ])
    end
end
