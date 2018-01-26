class ReadingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @readings = Reading.all
  end

  def show
  end

  def new
    @reading = Reading.new
  end

  def edit
  end

  def create
    @reading = Reading.new(reading_params)

      if @reading.save
        render json: { id: @reading.id }, status: :ok
      else
        render json: { errors: @reading.errors.messages, status: :unprocessable_entity }
      end
  end

  def update
    respond_to do |format|
      if @reading.update(reading_params)
        format.html { redirect_to @reading, notice: 'Moisture reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading}
      else
        format.html { render :edit }
        format.json { render json: @reading.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reading.destroy
    respond_to do |format|
      format.html { redirect_to measures_url, notice: 'Moisture reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Only allow permitted values.
  def reading_params
    params.require(:reading).permit(:sensor_id, :value, :plant_id)
  end
end
