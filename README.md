
NHL App
----------------------------------------
### Matthew Kimball

![Ruby](https://img.shields.io/badge/Ruby-v2.7.2-red)
![Rails](https://img.shields.io/badge/Rails-v5.2.6-red)
---
A little app I've been messing around with to get more familiar with Rails as well as API consumption and basic styling.

## Tools Used:
- Rails 5.2.6
- Ruby 2.7.2
- RSpec
- Postman

## API Endpoints Used
- For all teams: "https://statsapi.web.nhl.com/api/v1/teams"
- For a specific team: "https://statsapi.web.nhl.com/api/v1/teams/#{team_id}?expand=team.schedule.next"
- For a team's roster: "https://statsapi.web.nhl.com/api/v1/teams/#{team_id}/roster"
- For an individual player's stats: "https://statsapi.web.nhl.com/api/v1/people/#{player_id}

##Upcoming Features
- Implementing websockets for live score updates
- Previous games score
- Divide current game into columns with home and away teams scores
- Players stats by season
- Team stats by season
