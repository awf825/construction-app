class Api::V1::ProcurablesController < ApplicationController
  before_action :set_procurable, only: %i[ show update destroy ]

  def index_by_phase_id
    @phases = Procurable.where(phase_id: params[:phase_id]).ids
    render json: @phases
  end

  # GET /procurables
  def index
    @procurables = Procurable.all

    render json: @procurables
  end

  # GET /procurables/1
  def show
    render json: @procurable
  end

  # POST /procurables
  def create
    @procurable = Procurable.new(procurable_params)

    if @procurable.save
      render json: @procurable, status: :created, location: @procurable
    else
      render json: @procurable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /procurables/1
  def update
    if @procurable.update(procurable_params)
      render json: @procurable
    else
      render json: @procurable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /procurables/1
  def destroy
    @procurable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procurable
      @procurable = Procurable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def procurable_params
      params.require(:procurable).permit(:name, :subcontractor, :phase_id)
    end
end
