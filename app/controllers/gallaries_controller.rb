class GallariesController < ApplicationController
  before_action :set_gallary, only: [:show, :edit, :update, :destroy]

  # GET /gallaries
  # GET /gallaries.json
  def index
    @gallaries = Gallary.all
  end

  # GET /gallaries/1
  # GET /gallaries/1.json
  def show
  end

  # GET /gallaries/new
  def new
    @gallary = Gallary.new
  end

  # GET /gallaries/1/edit
  def edit
  end

  # POST /gallaries
  # POST /gallaries.json
  def create
    @gallary = Gallary.new(gallary_params)

    respond_to do |format|
      if @gallary.save
        format.html { redirect_to @gallary, notice: 'Gallary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gallary }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallaries/1
  # PATCH/PUT /gallaries/1.json
  def update
    respond_to do |format|
      if @gallary.update(gallary_params)
        format.html { redirect_to @gallary, notice: 'Gallary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gallary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallaries/1
  # DELETE /gallaries/1.json
  def destroy
    @gallary.destroy
    respond_to do |format|
      format.html { redirect_to gallaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallary
      @gallary = Gallary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallary_params
      params.require(:gallary).permit(:name, :image1, :image2, :remote_image1_url, :remote_image2_url)
    end
end
