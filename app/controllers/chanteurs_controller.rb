class ChanteursController < ApplicationController
  before_action :set_chanteur, only: [:show, :edit, :update, :destroy]

  # GET /chanteurs
  # GET /chanteurs.json
  def index
    @chanteurs = Chanteur.all
  end

  # GET /chanteurs/1
  # GET /chanteurs/1.json
  def show
  end

  # GET /chanteurs/new
  def new
    @chanteur = Chanteur.new
  end

  # GET /chanteurs/1/edit
  def edit
  end

  # POST /chanteurs
  # POST /chanteurs.json
  def create
    @chanteur = Chanteur.new(chanteur_params)

    respond_to do |format|
      if @chanteur.save
        format.html { redirect_to @chanteur, notice: 'Chanteur was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chanteur }
      else
        format.html { render action: 'new' }
        format.json { render json: @chanteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chanteurs/1
  # PATCH/PUT /chanteurs/1.json
  def update
    respond_to do |format|
      if @chanteur.update(chanteur_params)
        format.html { redirect_to @chanteur, notice: 'Chanteur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chanteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chanteurs/1
  # DELETE /chanteurs/1.json
  def destroy
    @chanteur.destroy
    respond_to do |format|
      format.html { redirect_to chanteurs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chanteur
      @chanteur = Chanteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chanteur_params
      params[:chanteur]
    end
end
