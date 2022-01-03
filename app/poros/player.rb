class Player
  attr_reader :name,
              :jersey_number,
              :position,
              :type,
              :link,
              :id,
              :next_game

  def initialize(data)
    @name = data[:person][:fullName]
    @jersey_number = data[:jerseyNumber]
    @position = data[:position][:name]
    @type = data[:position][:type]
    @id = data[:person][:id]
    @link = data[:link]
  end
end
# test[:teams].first[:nextGameSchedule][:dates].first[:date]
