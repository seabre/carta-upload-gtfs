class UploadsController < ApplicationController

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)
    logger.debug(upload_params)
    logger.debug("")
    respond_to do |format|
      if @upload.save
        @upload.delay.send_to_git(@upload.id)
        format.html { redirect_to root_path, notice: 'Files were successfully uploaded.'}
      else
        format.html { redirect_to root_path, error: 'There were issues with the upload.'}
      end
    end
  end

  private

  def upload_params
    params.require(:upload).permit(:agency, :calendar, :calendar_dates, :routes, :shapes, :stop_times, :stops, :trips)
  end
end
