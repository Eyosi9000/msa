class AcadamicAnnouncementsController < ApplicationController
  before_action :set_acadamic_announcement, only: %i[ show edit update destroy ]

  # GET /acadamic_announcements or /acadamic_announcements.json
  def index
    @acadamic_announcements = AcadamicAnnouncement.all
  end

  # GET /acadamic_announcements/1 or /acadamic_announcements/1.json
  def show
  end

  # GET /acadamic_announcements/new
  def new
    @acadamic_announcement = AcadamicAnnouncement.new
  end

  # GET /acadamic_announcements/1/edit
  def edit
  end

  # POST /acadamic_announcements or /acadamic_announcements.json
  def create
    @acadamic_announcement = AcadamicAnnouncement.new(acadamic_announcement_params)

    respond_to do |format|
      if @acadamic_announcement.save
        format.html { redirect_to acadamic_announcements_url, notice: "Acadamic announcement was successfully created." }
        format.json { render :show, status: :created, location: @acadamic_announcement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acadamic_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acadamic_announcements/1 or /acadamic_announcements/1.json
  def update
    respond_to do |format|
      if @acadamic_announcement.update(acadamic_announcement_params)
        format.html { redirect_to acadamic_announcements_url, notice: "Acadamic announcement was successfully updated." }
        format.json { render :show, status: :ok, location: @acadamic_announcement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acadamic_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acadamic_announcements/1 or /acadamic_announcements/1.json
  def destroy
    @acadamic_announcement.destroy

    respond_to do |format|
      format.html { redirect_to acadamic_announcements_url, notice: "Acadamic announcement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acadamic_announcement
      @acadamic_announcement = AcadamicAnnouncement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acadamic_announcement_params
      params.require(:acadamic_announcement).permit(:start_date, :end_date, :status, :acadamic_program_id, :acadamic_year_id)
    end
end
