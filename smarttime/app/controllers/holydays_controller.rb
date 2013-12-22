# coding: utf-8
class HolydaysController < ApplicationController
  before_action :set_holyday, only: [:show, :edit, :update, :destroy]

  # GET /holydays
  # GET /holydays.json
  def index
    @holydays = Holyday.all
  end

  # GET /holydays/1
  # GET /holydays/1.json
  def show
  end

  # GET /holydays/new
  def new
    @holyday = Holyday.new
  end

  # GET /holydays/1/edit
  def edit
  end

  # POST /holydays
  # POST /holydays.json
  def create
    @holyday = Holyday.new(holyday_params)

    respond_to do |format|
      if @holyday.save
        format.html { redirect_to @holyday, notice: 'Holyday was successfully created.' }
        format.json { render action: 'show', status: :created, location: @holyday }
      else
        format.html { render action: 'new' }
        format.json { render json: @holyday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holydays/1
  # PATCH/PUT /holydays/1.json
  def update
    respond_to do |format|
      if @holyday.update(holyday_params)
        format.html { redirect_to @holyday, notice: 'Holyday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @holyday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holydays/1
  # DELETE /holydays/1.json
  def destroy
    @holyday.destroy
    respond_to do |format|
      format.html { redirect_to holydays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holyday
      @holyday = Holyday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holyday_params
      params.require(:holyday).permit(:date, :name, :country)
    end
end
