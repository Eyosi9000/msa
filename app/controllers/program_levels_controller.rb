class ProgramLevelsController < ApplicationController
  before_action :set_program_level, only: %i[ show edit update destroy ]

  # GET /program_levels or /program_levels.json
  def index
    @program_levels = ProgramLevel.all
  end

  # GET /program_levels/1 or /program_levels/1.json
  def show
  end

  # GET /program_levels/new
  def new
    @program_level = ProgramLevel.new
  end

  # GET /program_levels/1/edit
  def edit
  end

  # POST /program_levels or /program_levels.json
  def create
    @program_level = ProgramLevel.new(program_level_params)

    respond_to do |format|
      if @program_level.save
        format.html { redirect_to program_level_url(@program_level), notice: "Program level was successfully created." }
        format.json { render :show, status: :created, location: @program_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @program_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_levels/1 or /program_levels/1.json
  def update
    respond_to do |format|
      if @program_level.update(program_level_params)
        format.html { redirect_to program_level_url(@program_level), notice: "Program level was successfully updated." }
        format.json { render :show, status: :ok, location: @program_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @program_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_levels/1 or /program_levels/1.json
  def destroy
    @program_level.destroy

    respond_to do |format|
      format.html { redirect_to program_levels_url, notice: "Program level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_level
      @program_level = ProgramLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def program_level_params
      params.require(:program_level).permit(:code, :name)
    end
end
