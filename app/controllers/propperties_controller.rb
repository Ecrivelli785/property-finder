class ProppertiesController < ApplicationController
  before_action :set_propperty, only: [:show, :edit, :update, :destroy]

  # GET /propperties
  # GET /propperties.json
  def index
    @propperties = Propperty.all
  end

  # GET /propperties/1
  # GET /propperties/1.json
  def show
  end

  # GET /propperties/new
  def new
    @propperty = Propperty.new
  end

  # GET /propperties/1/edit
  def edit
  end

  # POST /propperties
  # POST /propperties.json
  def create
    @propperty = Propperty.new(propperty_params)

    respond_to do |format|
      if @propperty.save
        format.html { redirect_to @propperty, notice: 'Propperty was successfully created.' }
        format.json { render :show, status: :created, location: @propperty }
      else
        format.html { render :new }
        format.json { render json: @propperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propperties/1
  # PATCH/PUT /propperties/1.json
  def update
    respond_to do |format|
      if @propperty.update(propperty_params)
        format.html { redirect_to @propperty, notice: 'Propperty was successfully updated.' }
        format.json { render :show, status: :ok, location: @propperty }
      else
        format.html { render :edit }
        format.json { render json: @propperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propperties/1
  # DELETE /propperties/1.json
  def destroy
    @propperty.destroy
    respond_to do |format|
      format.html { redirect_to propperties_url, notice: 'Propperty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propperty
      @propperty = Propperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def propperty_params
      params.require(:propperty).permit(:name, :address, :price, :rooms, :bathrooms)
    end
end
