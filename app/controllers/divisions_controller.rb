class DivisionsController < ApplicationController
  before_action :set_division, only: %i[ show update destroy ]

  # GET /divisions
  def index
    @divisions = Division.all

    render json: @divisions
  end

  # GET /divisions/1
  def show
    render json: @division
  end

  # POST /divisions
  def create
    @division = Division.new(division_params)

    if @division.save
      render json: @division, status: :created, location: @division
    else
      render json: @division.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /divisions/1
  def update
    if @division.update(division_params)
      render json: @division
    else
      render json: @division.errors, status: :unprocessable_entity
    end
  end

  # DELETE /divisions/1
  def destroy
    @division.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division
      @division = Division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
      params.fetch(:division, {})
    end
end
