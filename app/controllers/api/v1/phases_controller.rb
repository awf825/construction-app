class Api::V1::PhasesController < ApplicationController
  before_action :set_phase, only: %i[ show update destroy ]

  # /phases/:project_id
  def index_procurables_phases_by_project_id
    division_map = Division.all.where(account_id: 1).pluck(:id, :division_name).to_h
    @phase_ids = Phase.all.where(project_id: params[:project_id]).ids

    @grouped_procurables = Procurable.grouped_by_phase_id(@phase_ids)
    # this groups the data by division id (not name)
    binding.pry
    @grouped_procurables.transform_values! { 
      |v|
      v.group_by{ |o| o.division_id } 
    }

    render json: @grouped_procurables
  end

  # GET /phases
  def index
    @phases = Phase.all

    render json: @phases
  end

  # GET /phases/1
  def show
    render json: @phase
  end

  # POST /phases
  def create
    @phase = Phase.new(phase_params)

    if @phase.save
      render json: @phase, status: :created, location: @phase
    else
      render json: @phase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phases/1
  def update
    if @phase.update(phase_params)
      render json: @phase
    else
      render json: @phase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phases/1
  def destroy
    @phase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase
      @phase = Phase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phase_params
      params.require(:phase).permit(:name, :project_id)
    end
end
