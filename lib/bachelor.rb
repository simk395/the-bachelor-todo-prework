def get_first_name_of_season_winner(data, season)
  # code here
  i = ""
  data.each do |which_season, people|
    if which_season == season
      people.each do |info, value|
        if info["status"] == "Winner"
          i = info["name"]
          i = i.split(" ")
          return i[0]
        end
      end#people
    end#if
  end#data
end#def

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    people.each do |bio, info|
      if bio["occupation"] == occupation
        return bio["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, people|
    people.each do |bio, info|
      if bio["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    people.each do |bio, info|
      if bio["hometown"] == hometown
        return bio["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  i, j, l = 0, 0, 0
  data.each do |which_season, people|
    if which_season == season
      people.each do |bio, info|
        j += bio["age"].to_i
        i += 1
      end#people
    end#if
  end#data
  l = (j/i).round(2)
  l
end#def
