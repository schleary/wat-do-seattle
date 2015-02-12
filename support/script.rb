require 'json'

class Script

  JSON_INPUT = "{
     \"activities\": [
       {
         \"name\": \"Seattle Shenter\",
         \"image_url\": \"http://www.seattlecenter.com/\",
         \"min_price\": \"0\"
       }
     ]
   }
   "

  class << self

    # create_activites_via_static_json_string
    def quick_create
      create_activites(JSON.parse(JSON_INPUT))
    end

    def create_activites(json_hash)
      puts json_hash.inspect
      puts json_hash['activities'].class
      # puts json_hash[{'\"activities\']
      # puts json_hash['activities'].length
      puts "WOWO!!!!!"
      if json_hash['activities'] != nil && json_hash['activities'].length > 0
        json_hash['activities'].each do |activity|
          puts activity.inspect
          activity.to_hash
          puts activity.class
          a = Activity.new(activity)
          a.save
        end
      end
    end

  end

end
