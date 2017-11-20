class TourItemsController < ApplicationController
  before_action :set_tour_item, only: [:show, :edit, :update, :destroy]

  # GET /tour_items
  # GET /tour_items.json
  def index
    @tour_items = TourItem.all
  end

  # GET /tour_items/1
  # GET /tour_items/1.json
  def show
  end

  # GET /tour_items/new
  def new
    @tour_item = TourItem.new
  end

  # GET /tour_items/1/edit
  def edit
  end

  # POST /tour_items
  # POST /tour_items.json
  def create
    @tour_item = TourItem.new(tour_item_params)

    respond_to do |format|
      if @tour_item.save
        format.html { redirect_to @tour_item, notice: 'Tour item was successfully created.' }
        format.json { render :show, status: :created, location: @tour_item }
      else
        format.html { render :new }
        format.json { render json: @tour_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_items/1
  # PATCH/PUT /tour_items/1.json
  def update
    respond_to do |format|
      if @tour_item.update(tour_item_params)
        format.html { redirect_to @tour_item, notice: 'Tour item was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_item }
      else
        format.html { render :edit }
        format.json { render json: @tour_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_items/1
  # DELETE /tour_items/1.json
  def destroy
    @tour_item.destroy
    respond_to do |format|
      format.html { redirect_to tour_items_url, notice: 'Tour item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_item
      @tour_item = TourItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_item_params
      params.require(:tour_item).permit(:title, :category, :description, :image)
    end
end
