class KontaksController < ApplicationController
  before_action :set_kontak, only: %i[ show edit update destroy ]

  # GET /kontaks or /kontaks.json
  def index
    @kontaks = Kontak.all
  end

  # GET /kontaks/1 or /kontaks/1.json
  def show
  end

  # GET /kontaks/new
  def new
    @kontak = Kontak.new
  end

  # GET /kontaks/1/edit
  def edit
  end

  # POST /kontaks or /kontaks.json
  def create
    @kontak = Kontak.new(kontak_params)

    respond_to do |format|
      if @kontak.save
        format.html { redirect_to kontak_url(@kontak), notice: "Kontak was successfully created." }
        format.json { render :show, status: :created, location: @kontak }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kontak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kontaks/1 or /kontaks/1.json
  def update
    respond_to do |format|
      if @kontak.update(kontak_params)
        format.html { redirect_to kontak_url(@kontak), notice: "Kontak was successfully updated." }
        format.json { render :show, status: :ok, location: @kontak }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kontak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontaks/1 or /kontaks/1.json
  def destroy
    @kontak.destroy

    respond_to do |format|
      format.html { redirect_to kontaks_url, notice: "Kontak was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kontak
      @kontak = Kontak.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kontak_params
      params.require(:kontak).permit(:nama, :email, :telepon, :twitter, :facebook, :instagram)
    end
end
