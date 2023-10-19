class AplikasisController < ApplicationController
  before_action :set_aplikasi, only: %i[show edit update destroy]

  # GET /aplikasis or /aplikasis.json
  def index
    @aplikasis = Aplikasi.all
  end

  # GET /aplikasis/1 or /aplikasis/1.json
  def show; end

  # GET /aplikasis/new
  def new
    @aplikasi = Aplikasi.new
  end

  # GET /aplikasis/1/edit
  def edit; end

  # POST /aplikasis or /aplikasis.json
  def create
    @aplikasi = Aplikasi.new(aplikasi_params)

    if @aplikasi.save
      respond_to do |format|
        format.html { redirect_to aplikasi_url(@aplikasi), notice: 'Aplikasi was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aplikasis/1 or /aplikasis/1.json
  def update
    respond_to do |format|
      if @aplikasi.update(aplikasi_params)
        format.html { redirect_to aplikasi_url(@aplikasi), notice: 'Aplikasi was successfully updated.' }
        format.json { render :show, status: :ok, location: @aplikasi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aplikasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplikasis/1 or /aplikasis/1.json
  def destroy
    @aplikasi.destroy!

    respond_to do |format|
      format.html { redirect_to aplikasis_url, notice: 'Aplikasi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_aplikasi
    @aplikasi = Aplikasi.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def aplikasi_params
    params.require(:aplikasi).permit(:nama, :alamat_web, :nama_penanggung_jawab, :deskripsi)
  end
end
