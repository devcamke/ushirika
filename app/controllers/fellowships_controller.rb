class FellowshipsController < ApplicationController
  before_action :set_fellowship, only: %i[ show edit update destroy ]

  # GET /fellowships or /fellowships.json
  def index
    @fellowships = Fellowship.all
  end

  # GET /fellowships/1 or /fellowships/1.json
  def show
  end

  # GET /fellowships/new
  def new
    @fellowship = Fellowship.new
  end

  # GET /fellowships/1/edit
  def edit
  end

  # POST /fellowships or /fellowships.json
  def create
    @fellowship = Fellowship.new(fellowship_params)

    respond_to do |format|
      if @fellowship.save
        format.html { redirect_to fellowship_url(@fellowship), notice: "Fellowship was successfully created." }
        format.json { render :show, status: :created, location: @fellowship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fellowship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fellowships/1 or /fellowships/1.json
  def update
    respond_to do |format|
      if @fellowship.update(fellowship_params)
        format.html { redirect_to fellowship_url(@fellowship), notice: "Fellowship was successfully updated." }
        format.json { render :show, status: :ok, location: @fellowship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fellowship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fellowships/1 or /fellowships/1.json
  def destroy
    @fellowship.destroy!

    respond_to do |format|
      format.html { redirect_to fellowships_url, notice: "Fellowship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fellowship
      @fellowship = Fellowship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fellowship_params
      params.require(:fellowship).permit(:name, :day_of_meeting, :coordinator, :host, :minister, :attendees, :comments)
    end
end
