class AcadamicYearsController < ApplicationController
  before_action :set_acadamic_year, only: %i[ show edit update destroy ]

  # GET /acadamic_years or /acadamic_years.json
  def index
    @acadamic_years = AcadamicYear.all
  end

  # GET /acadamic_years/1 or /acadamic_years/1.json
  def show
  end

  # GET /acadamic_years/new
  def new
    @acadamic_year = AcadamicYear.new
  end

  # GET /acadamic_years/1/edit
  def edit
  end

  # POST /acadamic_years or /acadamic_years.json
  def create
    @acadamic_year = AcadamicYear.new(acadamic_year_params)

    respond_to do |format|
      if @acadamic_year.save
        format.html { redirect_to acadamic_year_url(@acadamic_year), notice: "Acadamic year was successfully created." }
        format.json { render :show, status: :created, location: @acadamic_year }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acadamic_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acadamic_years/1 or /acadamic_years/1.json
  def update
    respond_to do |format|
      if @acadamic_year.update(acadamic_year_params)
        format.html { redirect_to acadamic_year_url(@acadamic_year), notice: "Acadamic year was successfully updated." }
        format.json { render :show, status: :ok, location: @acadamic_year }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acadamic_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acadamic_years/1 or /acadamic_years/1.json
  def destroy
    @acadamic_year.destroy

    respond_to do |format|
      format.html { redirect_to acadamic_years_url, notice: "Acadamic year was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acadamic_year
      @acadamic_year = AcadamicYear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acadamic_year_params
      params.require(:acadamic_year).permit(:year, :description)
    end
end
