def get_first_name_of_season_winner(data, season)
  # code here
  i = ""
  data.each do |which_season, people|
    if which_season == season
      people.each do |info|
        if info["status"] == "winner"
          i = info["name"].split(" ")
          return i[0]
        end#if
      end#people
    end#if
  end#data
end#def

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
