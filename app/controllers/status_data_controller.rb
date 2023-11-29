class StatusDataController < ApplicationController
  before_action :set_status_datum, only: %i[ show edit update destroy ]

  # GET /status_data or /status_data.json
  def index
    @status_data = StatusDatum.all
  end

  # GET /status_data/1 or /status_data/1.json
  def show
  end

  # GET /status_data/new
  def new
    @status_datum = StatusDatum.new
  end

  # GET /status_data/1/edit
  def edit
  end

  # POST /status_data or /status_data.json
  def create
    @status_datum = StatusDatum.new(status_datum_params)

    respond_to do |format|
      if @status_datum.save
        format.html { redirect_to status_datum_url(@status_datum), notice: "Status data was successfully created." }
        format.json { render :show, status: :created, location: @status_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @status_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_data/1 or /status_data/1.json
  def update
    respond_to do |format|
      if @status_datum.update(status_datum_params)
        format.html { redirect_to status_datum_url(@status_datum), notice: "Status data was successfully updated." }
        format.json { render :show, status: :ok, location: @status_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @status_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_data/1 or /status_data/1.json
  def destroy
    @status_datum.destroy!

    respond_to do |format|
      format.html { redirect_to status_data_url, notice: "Status data was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_datum
      @status_datum = StatusDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_datum_params
      params.require(:status_datum).permit(:kondisi_data, :catatan, :rekomendasi, :validasi)
    end
end
