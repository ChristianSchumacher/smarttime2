# coding: utf-8
class HirecarsController < ApplicationController
  before_action :set_hirecar, only: [:show, :edit, :update, :destroy]
  #validates_presence_of :name 
  #validates :stati_id, :presence => {:message => 'Leihwagen muss einen Stauts erhalten'}
  

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
    @statis = Stati.all
  end

  # GET /hirecars/1/edit
  def edit
    @statis = Stati.all
  end

  # POST /hirecars
  # POST /hirecars.json
  def create
    @hirecar = Hirecar.new(hirecar_params)
    
    respond_to do |format|
      if @hirecar.save
        History.create("action"=>"add","user_id" => current_user.id, "description" =>"Leihwagen wurde erstellt")
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
        History.create("action"=>"change","user_id" => current_user.id, "description" =>"Leihwagen wurde editiert")
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
    History.create("action"=>"del","user_id" => current_user.id, "description" =>"Leihwagen wurde geloescht")
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
      params.require(:hirecar).permit(:badge, :regestration_date, :fuel, :brand, :model, :comment, :defect, :smoking, :stati_id, :tech_check)
    end
end
