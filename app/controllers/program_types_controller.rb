class ProgramTypesController < ApplicationController
  before_action :set_program_type, only: %i[ show edit update destroy ]

  # GET /program_types or /program_types.json
  def index
    @program_types = ProgramType.all
  end

  # GET /program_types/1 or /program_types/1.json
  def show
  end

  # GET /program_types/new
  def new
    @program_type = ProgramType.new
  end

  # GET /program_types/1/edit
  def edit
  end

  # POST /program_types or /program_types.json
  def create
    @program_type = ProgramType.new(program_type_params)

    respond_to do |format|
      if @program_type.save
        format.html { redirect_to program_type_url(@program_type), notice: "Program type was successfully created." }
        format.json { render :show, status: :created, location: @program_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @program_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_types/1 or /program_types/1.json
  def update
    respond_to do |format|
      if @program_type.update(program_type_params)
        format.html { redirect_to program_type_url(@program_type), notice: "Program type was successfully updated." }
        format.json { render :show, status: :ok, location: @program_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @program_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_types/1 or /program_types/1.json
  def destroy
    @program_type.destroy

    respond_to do |format|
      format.html { redirect_to program_types_url, notice: "Program type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_type
      @program_type = ProgramType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def program_type_params
      params.require(:program_type).permit(:code, :name)
    end
end
