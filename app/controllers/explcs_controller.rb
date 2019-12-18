class ExplcsController < ApplicationController
  before_action :set_explc, only: [:show, :edit, :update, :destroy]

  # GET /explcs
  # GET /explcs.json
  def index
    @explcs = Explc.all
  end

  # GET /explcs/1
  # GET /explcs/1.json
  def show
  end

  # GET /explcs/new
  def new
    @explc = Explc.new
  end

  # GET /explcs/1/edit
  def edit
  end

  # POST /explcs
  # POST /explcs.json
  def create
    @explc = Explc.new(explc_params)

    respond_to do |format|
      if @explc.save
        format.html { redirect_to @explc, notice: 'Explc was successfully created.' }
        format.json { render :show, status: :created, location: @explc }
      else
        format.html { render :new }
        format.json { render json: @explc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explcs/1
  # PATCH/PUT /explcs/1.json
  def update
    respond_to do |format|
      if @explc.update(explc_params)
        format.html { redirect_to @explc, notice: 'Explc was successfully updated.' }
        format.json { render :show, status: :ok, location: @explc }
      else
        format.html { render :edit }
        format.json { render json: @explc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explcs/1
  # DELETE /explcs/1.json
  def destroy
    @explc.destroy
    respond_to do |format|
      format.html { redirect_to explcs_url, notice: 'Explc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_explc
      @explc = Explc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def explc_params
      params.require(:explc).permit(:lc_number, :issue_date, :expiry_date, :currency, :amount, :applicant, :beneficiary, :issuing_bank, :tenor, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :latest_shipment_date, :partial_shipment, :transhipment, :goods_description, :documents_required, :additional_conditions, :drawee, :available_with, :available_by, :remarks)
    end
end
