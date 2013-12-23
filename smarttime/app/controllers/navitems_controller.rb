class NavitemsController < ApplicationController
  before_action :set_navitem, only: [:show, :edit, :update, :destroy]

  # GET /navitems
  # GET /navitems.json
  def index
    @navitems = Navitem.all
  end

  # GET /navitems/1
  # GET /navitems/1.json
  def show
  end

  # GET /navitems/new
  def new
    @navitem = Navitem.new
  end

  # GET /navitems/1/edit
  def edit
  end

  # POST /navitems
  # POST /navitems.json
  def create
    @navitem = Navitem.new(navitem_params)

    respond_to do |format|
      if @navitem.save
        format.html { redirect_to @navitem, notice: 'Navitem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @navitem }
      else
        format.html { render action: 'new' }
        format.json { render json: @navitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navitems/1
  # PATCH/PUT /navitems/1.json
  def update
    respond_to do |format|
      if @navitem.update(navitem_params)
        format.html { redirect_to @navitem, notice: 'Navitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @navitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navitems/1
  # DELETE /navitems/1.json
  def destroy
    @navitem.destroy
    respond_to do |format|
      format.html { redirect_to navitems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navitem
      @navitem = Navitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navitem_params
      params.require(:navitem).permit(:name, :url, :order)
    end
end
