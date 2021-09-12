require 'sequel'
DB = Sequel.sqlite('./db/weather.db')

DB.create_table? :forecasts do
  primary_key :id
  String :name
  String :region
  String :country
  Integer :temperature
  String :weather_decsription
  Integer :wind_speed
  Float :precip
  Integer :pressure
  Integer :cloudcover
  String :sunrise
  String :sunset
  String :moonrise
  String :moonset
  DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP, :index=>true
end