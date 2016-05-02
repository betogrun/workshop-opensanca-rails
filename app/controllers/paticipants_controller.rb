class PaticipantsController < ApplicationController
  before_action :set_paticipant, only: [:show, :edit, :update, :destroy]

  # GET /paticipants
  # GET /paticipants.json
  def index
    @paticipants = Paticipant.all
  end

  # GET /paticipants/1
  # GET /paticipants/1.json
  def show
  end

  # GET /paticipants/new
  def new
    @paticipant = Paticipant.new
  end

  # GET /paticipants/1/edit
  def edit
  end

  # POST /paticipants
  # POST /paticipants.json
  def create
    @paticipant = Paticipant.new(paticipant_params)

    respond_to do |format|
      if @paticipant.save
        format.html { redirect_to @paticipant, notice: 'Paticipant was successfully created.' }
        format.json { render :show, status: :created, location: @paticipant }
      else
        format.html { render :new }
        format.json { render json: @paticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paticipants/1
  # PATCH/PUT /paticipants/1.json
  def update
    respond_to do |format|
      if @paticipant.update(paticipant_params)
        format.html { redirect_to @paticipant, notice: 'Paticipant was successfully updated.' }
        format.json { render :show, status: :ok, location: @paticipant }
      else
        format.html { render :edit }
        format.json { render json: @paticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paticipants/1
  # DELETE /paticipants/1.json
  def destroy
    @paticipant.destroy
    respond_to do |format|
      format.html { redirect_to paticipants_url, notice: 'Paticipant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paticipant
      @paticipant = Paticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paticipant_params
      params.require(:paticipant).permit(:name, :event_id)
    end
end
