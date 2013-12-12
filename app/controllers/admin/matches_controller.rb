class Admin::MatchesController < Admin::AdministratorController
  before_action :set_match, only: [:show, :edit, :update, :destroy, :edit_score]
  
  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
<<<<<<< HEAD
        format.html { redirect_to admin_matches_path, notice: 'Match was successfully created.' }
=======
        format.html { redirect_to [:admin, @match], notice: 'Match was successfully created.' }
>>>>>>> 11d3343324edb1636e2a09bc4b976eb632578a27
        format.json { render action: 'show', status: :created, location: @match }
      else
        format.html { render action: 'new' }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
<<<<<<< HEAD
        format.html { redirect_to admin_match_path, notice: 'Match was successfully updated.' }
=======
        format.html { redirect_to [:admin, @match], notice: 'Match was successfully updated.' }
>>>>>>> 11d3343324edb1636e2a09bc4b976eb632578a27
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to admin_matches_url }
      format.json { head :no_content }
    end
  end

  def edit_score
    respond_to do |format|
      format.js
    end   
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params[:match].permit(:date,:home,:away,:score_home,:score_away)
    end
end
