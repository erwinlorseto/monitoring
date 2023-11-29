class VerifikatorsController < ApplicationController
  before_action :set_verifikator, only: %i[ show edit update destroy ]

  
  # GET /verifikators or /verifikators.json
  def index
    @verifikators = Verifikator.all
    respond_to do |format|
      format.html
      format.csv do#{ send_data ExportVerifikatorCSVService.new(@verifikators).generate }
        send_data Verifikator.to_csv, filename: "verifikator.csv"
    end
  end
end
  # GET /verifikators/1 or /verifikators/1.json
  def show
  end

  # GET /verifikators/new 
  def new
    @verifikator = Verifikator.new
  end

  # GET /verifikators/1/edit
  def edit
  end

  # POST /verifikators or /verifikators.json
  def create
    @verifikator = Verifikator.new(verifikator_params)

    respond_to do |format|
      if @verifikator.save
        format.html { redirect_to verifikator_url(@verifikator), notice: "Verifikator was successfully created." }
        format.json { render :show, status: :created, location: @verifikator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @verifikator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verifikators/1 or /verifikators/1.json
  def update
    respond_to do |format|
      if @verifikator.update(verifikator_params)
        format.html { redirect_to verifikator_url(@verifikator), notice: "Verifikator was successfully updated." }
        format.json { render :show, status: :ok, location: @verifikator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @verifikator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifikators/1 or /verifikators/1.json
  def destroy
    @verifikator.destroy!

    respond_to do |format|
      format.html { redirect_to verifikators_url, notice: "Verifikator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verifikator
      @verifikator = Verifikator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def verifikator_params
      params.require(:verifikator).permit(:jenis_dokumen, :menu_aplikasi, :kondisi_data, :catatan, :rekomendasi, :aplikasi_id)
    end
  end

