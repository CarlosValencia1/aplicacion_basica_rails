class RegOrdensController < ApplicationController
  before_action :set_reg_orden, only: [:show, :edit, :update, :destroy]

  # GET /reg_ordens
  # GET /reg_ordens.json
  def index
    @reg_ordens = RegOrden.all
  end

  # GET /reg_ordens/1
  # GET /reg_ordens/1.json
  def show
  end

  # GET /reg_ordens/new
  def new
    @reg_orden = RegOrden.new
  end

  # GET /reg_ordens/1/edit
  def edit
  end

  # POST /reg_ordens
  # POST /reg_ordens.json
  def create
    @reg_orden = RegOrden.new(reg_orden_params)

    respond_to do |format|
      if @reg_orden.save
        format.html { redirect_to @reg_orden, notice: 'Reg orden was successfully created.' }
        format.json { render :show, status: :created, location: @reg_orden }
      else
        format.html { render :new }
        format.json { render json: @reg_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_ordens/1
  # PATCH/PUT /reg_ordens/1.json
  def update
    respond_to do |format|
      if @reg_orden.update(reg_orden_params)
        format.html { redirect_to @reg_orden, notice: 'Reg orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg_orden }
      else
        format.html { render :edit }
        format.json { render json: @reg_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_ordens/1
  # DELETE /reg_ordens/1.json
  def destroy
    @reg_orden.destroy
    respond_to do |format|
      format.html { redirect_to reg_ordens_url, notice: 'Reg orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_orden
      @reg_orden = RegOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_orden_params
      params.require(:reg_orden).permit(:cliente_id, :fecha)
    end
end
