class ChansonsController < ApplicationController
  before_action :set_chanson, only: [:show, :edit, :update, :destroy]

  # GET /chansons
  # GET /chansons.json
  def index
    @chansons = Chanson.all
  end

  # GET /chansons/1
  # GET /chansons/1.json
  def show
  end

  # GET /chansons/new
  def new
    @chanson = Chanson.new
  end

  # GET /chansons/1/edit
  def edit
  end

  # POST /chansons
  # POST /chansons.json
  def create
    @chanson = Chanson.new(chanson_params)

    respond_to do |format|
      if @chanson.save
        format.html { redirect_to @chanson, notice: 'Chanson was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chanson }
      else
        format.html { render action: 'new' }
        format.json { render json: @chanson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chansons/1
  # PATCH/PUT /chansons/1.json
  def update
    respond_to do |format|
      if @chanson.update(chanson_params)
        format.html { redirect_to @chanson, notice: 'Chanson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chanson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chansons/1
  # DELETE /chansons/1.json
  def destroy
    @chanson.destroy
    respond_to do |format|
      format.html { redirect_to chansons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chanson
      @chanson = Chanson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chanson_params
      params.require(:chanson).permit(:titre, :parole)
    end
end
