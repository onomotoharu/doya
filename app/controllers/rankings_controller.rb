class RankingsController < ApplicationController
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]

  # GET /rankings
  # GET /rankings.json
  def index
    @rankings = Ranking.all
  end

  # # GET /rankings/new
  # def new
  #   @ranking = Ranking.new
  # end

  # # POST /rankings
  # # POST /rankings.json
  # def create user_id
  #   if Ranking.exists?(:user_id => user_id)
  #     @ranking = self.update(user_id)
  #   else     
  #     @ranking = Ranking.new()
  #   end

  #   respond_to do |format|
  #     if @ranking.save
  #       format.html { redirect_to @ranking, notice: 'Ranking was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @ranking }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @ranking.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /rankings/1
  # # PATCH/PUT /rankings/1.json
  # def update user_id
  #   respond_to do |format|
  #     if @ranking.update(ranking_params)
  #       format.html { redirect_to @ranking, notice: 'Ranking was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @ranking.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /rankings/1
  # # DELETE /rankings/1.json
  # def destroy
  #   @ranking.destroy
  #   respond_to do |format|
  #     format.html { redirect_to rankings_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_params
      params.require(:ranking).permit(:user_id, :liked, :userliked, :tagsliked)
    end
end
