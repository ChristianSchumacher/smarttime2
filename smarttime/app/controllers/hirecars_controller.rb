class HirecarsController < ApplicationController
  before_action :set_hirecar, only: [:show, :edit, :update, :destroy]

  # GET /hirecars
  # GET /hirecars.json
  def index
    @hirecars = Hirecar.all
  end

  # GET /hirecars/1
  # GET /hirecars/1.json
  def show
  end

  # GET /hirecars/new
  def new
    @hirecar = Hirecar.new
  end

  # GET /hirecars/1/edit
  def edit
  end

  # POST /hirecars
  # POST /hirecars.json
  def create
    @hirecar = Hirecar.new(hirecar_params)

    respond_to do |format|
      if @hirecar.save
        format.html { redirect_to @hirecar, notice: 'Hirecar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hirecar }
      else
        format.html { render action: 'new' }
        format.json { render json: @hirecar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hirecars/1
  # PATCH/PUT /hirecars/1.json
  def update
    respond_to do |format|
      if @hirecar.update(hirecar_params)
        format.html { redirect_to @hirecar, notice: 'Hirecar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hirecar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hirecars/1
  # DELETE /hirecars/1.json
  def destroy
    @hirecar.destroy
    respond_to do |format|
      format.html { redirect_to hirecars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hirecar
      @hirecar = Hirecar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hirecar_params
      params.require(:hirecar).permit(:badge, :regestration_date, :fuel, :brand, :model, :comment, :defect, :smoking, :status_id, :tech_check)
    end
end
