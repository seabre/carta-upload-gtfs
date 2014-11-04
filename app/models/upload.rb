class Upload < ActiveRecord::Base

  mount_uploader :agency, AgencyUploader
  mount_uploader :calendar, CalendarUploader
  mount_uploader :calendar_dates, CalendarDatesUploader
  mount_uploader :routes, RoutesUploader
  mount_uploader :shapes, ShapesUploader
  mount_uploader :stop_times, StopTimesUploader
  mount_uploader :stops, StopsUploader
  mount_uploader :trips, TripsUploader

  def send_to_git(id)
    cmd = "#{Rails.root}/bin/update_gtfs #{id}"
    `#{cmd}`
  end

end
