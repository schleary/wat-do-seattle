require 'json'

class Script

  # JSON_INPUT = "{
  #    \"activities\": [
  #      {
  #        \"name\": \"Seattle Shenter ONE\",
  #        \"image_url\": \"http://www.seattlecenter.com/\",
  #        \"min_price\": \"0\"
  #      }
  #    ]
  #  }"


  JSON_INPUT = "{
    \"activities\": [
      {
        \"name\": \"Seattle Center1\",
        \"url\": \"http://www.seattlecenter.com/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"International Fountain that plays music, Space Needle, Armory, EMP Museum, Chihuly Garden, Kobe Bell, Key Arena, Outdoor Mural Amphitheater, Pacific Science Center and IMAX, Seattle Center Skate Park, Children’s Museum.\",
        \"image_url\": \"http://www.seattle.gov/tour/image/center10.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Children's Museum1\",
        \"url\": \"http://thechildrensmuseum.org/\",
        \"min_price\": \"9\",
        \"max_price\": \"17\",
        \"description\": \"Mini Metropolitan Market, Discovery Bay, Fort Adventure, Global Village, Imagination Studio, Mountain, Neighborhood, Story Telling Circle, Construction Zone, Mini Bean Sprouts Cafe\",
        \"image_url\": \"http://redtricom.files.wordpress.com/2013/12/kids-quest-museum.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Tractor Tavern Square Dancing1\",
        \"url\": \"http://www.tractortavern.com/\",
        \"min_price\": \"7\",
        \"max_price\": \"30\",
        \"description\": \"Traditional Square Dance and Two Stepping night with an instructor who teaches you how to swing your partner to and fro.  All skill levels welcome! \",
        \"image_url\": \"http://i.ticketweb.com/i/00/05/55/67/99_Edp.jpg\",
        \"min_activity_level\": \"3\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"EMP (Sci-fi Music Center)1\",
        \"url\": \"http://www.empmuseum.org/\",
        \"min_price\": \"20\",
        \"max_price\": \"20\",
        \"description\": \"EMP Museum is a nonprofit museum, dedicated to contemporary popular culture. EMP Museum is home to exhibits, interactive activity stations, sound sculpture, and various educational resources\",
        \"image_url\": \"http://www.azahner.com/resources/exterior/image/emp.aerial2.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Vertical World1\",
        \"url\": \"http://verticalworld.com/\",
        \"min_price\": \"10\",
        \"max_price\": \"25\",
        \"description\": \"The Seattle Vertical World is the Puget Sound's premiere Rock Climbing, Fitness, Bootcamp and Yoga destination.\",
        \"image_url\": \"http://s3-media4.fl.yelpcdn.com/bphoto/j2S6OTrZ7xbA2a7u1aHAsA/o.jpg\",
        \"min_activity_level\": \"3\",
        \"max_activity_level\": \"5\"
      }
    ]
  }"


  class << self

    # create_activites_via_static_json_string
    def quick_create
      create_activites(JSON.parse(JSON_INPUT))
    end

    def create_activites(json_hash)
      if json_hash['activities'] != nil && json_hash['activities'].length > 0
        json_hash['activities'].each do |activity|
          a = Activity.new(activity)
          a.save
        end
      end
    end

  end

end
