# frozen_string_literal: true

require 'csv'

# rake import:station_data
namespace :import do
  # このdescはdescribeのdesc
  desc 'Import room from csv'

  task room: :environment do
    path = File.join Rails.root, 'db/csv/room.csv'
    puts "path: #{path}"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        week: row['week'],
        time: row['time'],
        mansion: row['mansion'],
        classroom: row['classroom'],
        aiteru: row['aiteru'],
        floor: row['floor'],
        post: row['post']
      }
    end
    puts 'start to create room'
    begin
      Room.create!(list) # クラス名注意
      puts 'completed!!'
    rescue ActiveModel::UnknownAttributeError
      puts 'raised error : unKnown attribute '
    end
  end
end
