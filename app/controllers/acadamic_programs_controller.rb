class AcadamicProgramsController < ApplicationController
  before_action :set_acadamic_program, only: %i[ show edit update destroy ]

  # GET /acadamic_programs or /acadamic_programs.json
  def index
    @acadamic_programs = AcadamicProgram.all
  end

  # GET /acadamic_programs/1 or /acadamic_programs/1.json
  def show
  end

  # GET /acadamic_programs/new
  def new
    @acadamic_program = AcadamicProgram.new
  end

  # GET /acadamic_programs/1/edit
  def edit
  end

  # POST /acadamic_programs or /acadamic_programs.json
  def create
    @acadamic_program = AcadamicProgram.new(acadamic_program_params)

    respond_to do |format|
      if @acadamic_program.save
        format.html { redirect_to acadamic_programs_url, notice: "Acadamic program was successfully created." }
        format.json { render :show, status: :created, location: @acadamic_program }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acadamic_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acadamic_programs/1 or /acadamic_programs/1.json
  def update
    respond_to do |format|
      if @acadamic_program.update(acadamic_program_params)
        format.html { redirect_to acadamic_programs_url, notice: "Acadamic program was successfully updated." }
        format.json { render :show, status: :ok, location: @acadamic_program }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acadamic_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acadamic_programs/1 or /acadamic_programs/1.json
  def destroy
    @acadamic_program.destroy

    respond_to do |format|
      format.html { redirect_to acadamic_programs_url, notice: "Acadamic program was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acadamic_program
      @acadamic_program = AcadamicProgram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acadamic_program_params
      params.require(:acadamic_program).permit(:program_id, :program_level_id, :program_type_id, :duration)
    end
end
