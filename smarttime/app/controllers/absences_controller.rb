# coding: utf-8
class AbsencesController < ApplicationController
  before_action :set_absence, only: [:show, :edit, :update, :destroy]

  # GET /absences
  # GET /absences.json
  def index
    @absences = Absence.all
  end

  # GET /absences/1
  # GET /absences/1.json
  def show
  end

  # GET /absences/new
  def new
    @absence = Absence.new
    @users = User.all
  end

  # GET /absences/1/edit
  def edit
  end

  # POST /absences
  # POST /absences.json
  def create
    @absence = Absence.new(absence_params)

    respond_to do |format|
      if @absence.save
        History.create("action"=>"add","user_id" => current_user.id, "description" =>"Abwesenheit wurde eingetragen")
        format.html { redirect_to @absence, notice: 'Absence was successfully created.' }
        format.json { render action: 'show', status: :created, location: @absence }
      else
        format.html { render action: 'new' }
        format.json { render json: @absence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /absences/1
  # PATCH/PUT /absences/1.json
  def update
    respond_to do |format|
      History.create("action"=>"change","user_id" => current_user.id, "description" =>"Abwesenheit wurde geändert")
      if @absence.update(absence_params)
        format.html { redirect_to @absence, notice: 'Absence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @absence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /absences/1
  # DELETE /absences/1.json
  def destroy
    @absence.destroy
     History.create("action"=>"change","user_id" => current_user.id, "description" =>"Abwesenheit wurde entfernt")
    respond_to do |format|
      format.html { redirect_to absences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_absence
      @absence = Absence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def absence_params
      params.require(:absence).permit(:start_day, :end_day, :user_id, :reason, :comment)
    end
end
