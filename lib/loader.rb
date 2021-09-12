require "csv"

class Loader
    def load!
        entries = DB[:forecasts]
        CSV.foreach("db/forecast.csv", headers: true) do |row|
            entries.insert(row.to_h)
        end
    end
end