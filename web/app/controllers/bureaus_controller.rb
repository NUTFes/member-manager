class BureausController < ApplicationController
  before_action :set_bureau, only: %i[ show edit update destroy ]

  # GET /bureaus or /bureaus.json
  def index
    @bureaus = Bureau.all
  end

  # GET /bureaus/1 or /bureaus/1.json
  def show
  end

  # GET /bureaus/new
  def new
    @bureau = Bureau.new
  end

  # GET /bureaus/1/edit
  def edit
  end

  # POST /bureaus or /bureaus.json
  def create
    @bureau = Bureau.new(bureau_params)

    respond_to do |format|
      if @bureau.save
        format.html { redirect_to @bureau, notice: "Bureau was successfully created." }
        format.json { render :show, status: :created, location: @bureau }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bureau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bureaus/1 or /bureaus/1.json
  def update
    respond_to do |format|
      if @bureau.update(bureau_params)
        format.html { redirect_to @bureau, notice: "Bureau was successfully updated." }
        format.json { render :show, status: :ok, location: @bureau }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bureau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bureaus/1 or /bureaus/1.json
  def destroy
    @bureau.destroy
    respond_to do |format|
      format.html { redirect_to bureaus_url, notice: "Bureau was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bureau
      @bureau = Bureau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bureau_params
      params.permit(:name)
    end
end
