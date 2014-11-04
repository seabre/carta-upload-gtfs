class AddFilenamesToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :agency, :string
    add_column :uploads, :calendar, :string
    add_column :uploads, :calendar_dates, :string
    add_column :uploads, :routes, :string
    add_column :uploads, :shapes, :string
    add_column :uploads, :stop_times, :string
    add_column :uploads, :stops, :string
    add_column :uploads, :trips, :string
  end
end
