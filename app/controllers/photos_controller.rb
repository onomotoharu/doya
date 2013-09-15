class PhotosController < ApplicationController
  before_filter :authenticate_user!, :except=>[:index,:like]
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.order("like DESC")
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end
  # POST /photos
  # POST /photos.json
  def create
    data = photo_params.merge({'user_id'=>current_user.id})
    data['like'] = 0
    @photo = Photo.new(data)
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    if @photo.user_id == current_user.id then 
      @photo.destroy
    end
    
    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end


  def like
    photo = Photo.find_by_id(params[:id])  
    photo.like = photo.like+1 if user_signed_in?
    photo.save!
    render :json => photo
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:image, :user_id, :like)
    end
end
