class Team
  attr_reader :name,
              :firstYearOfPlay,
              :officialSiteUrl,
              :venue,
              :locationName,
              :division,
              :city,
              :id

  def initialize(data)
    @name = data[:name]
    @firstYearOfPlay = data[:firstYearOfPlay]
    @officialSiteUrl = data[:officialSiteUrl]
    @venue = data[:venue][:name]
    @locationName = data[:locationName]
    @city = data[:venue][:city]
    @division = data[:division][:name]
    @id = data[:id]
  end
end