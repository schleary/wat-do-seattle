require 'json'

 class Mactivity

   JSON_INPUT = "{
     \"Sheet1\": [
       {
         \"Name\": \"Seattle Center\",
         \"URL\": \"http://www.seattlecenter.com/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Children's Museum\",
         \"URL\": \"http://thechildrensmuseum.org/\"
       },
       {
         \"Name\": \"EMP (Sci-fi Music Center)\",
         \"URL\": \"http://www.empmuseum.org/\"
       },
       {
         \"Name\": \"Space Needle\",
         \"URL\": \"http://www.spaceneedle.com/home/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"The Ducks\",
         \"URL\": \"http://www.ridetheducksofseattle.com/\"
       },
       {
         \"Name\": \"Underground Tours\",
         \"URL\": \"http://undergroundtour.com/\"
       },
       {
         \"Name\": \"Beacon Hill\",
         \"URL\": \"http://www.seattle.gov/parks/park_detail.asp?id=114\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Burke Dinosaur UW Museum (1st Thurs free, open till 8pm)\",
         \"URL\": \"http://www.burkemuseum.org/\"
       },
       {
         \"Name\": \"Seattle Aquarium\",
         \"URL\": \"http://www.seattleaquarium.org/\"
       },
       {
         \"Name\": \"Woodland Zoo\",
         \"URL\": \"http://www.zoo.org/\"
       },
       {
         \"Name\": \"Waterfall Gardens\",
         \"URL\": \"http://www.waterfallgardens.com/\"
       },
       {
         \"Name\": \"Columbia Center\",
         \"URL\": \"http://www.skyviewobservatory.com/\"
       },
       {
         \"Name\": \"Seattle Public Library\",
         \"URL\": \"http://www.spl.org/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Washington Arboretum\",
         \"URL\": \"http://depts.washington.edu/uwbg/gardens/wpa.shtml\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"The SIFF Theater\",
         \"URL\": \"http://www.siff.net/\"
       },
       {
         \"Name\": \"Key Arena\",
         \"URL\": \"http://arenaseattle.com/\"
       },
       {
         \"Name\": \"The Ballard Locks\",
         \"URL\": \"http://www.seattle.gov/tour/locks.htm\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Piers\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Pioneer Square\",
         \"URL\": \"http://www.pioneersquare.org/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Beacon Food Forest\",
         \"URL\": \"http://www.beaconfoodforest.org/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Ballard Farmer's Market\",
         \"URL\": \"https://ballardfarmersmarket.wordpress.com/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Capitol Hill Block Party\"
       },
       {
         \"Name\": \"Hipster Thrift Stores in CH\"
       },
       {
         \"Name\": \"International District\",
         \"URL\": \"http://www.cidbia.org/\",
         \"Price_Low\": \"0\"
       },
       {
         \"Name\": \"Fremont Troll\",
         \"URL\": \"http://fremont.com/about/fremonttroll-html/\",
         \"Price_Low\": \"0\",
         \"Price_High\": \"0\"
       },
       {
         \"Name\": \"Queen Anne Homes and views\"
       },
       {
         \"Name\": \"QA Public Library\"
       },
       {
         \"Name\": \"Woodinville\"
       },
       {
         \"Name\": \"Cemetery on Meridian (cool rows)\"
       },
       {
         \"Name\": \"Lakeview Cemetery (Bruce Lee)\"
       },
       {
         \"Name\": \"Green Lake (run)\"
       },
       {
         \"Name\": \"Kinnear Park\"
       },
       {
         \"Name\": \"Discovery Park\"
       },
       {
         \"Name\": \"Alki Beach\"
       },
       {
         \"Name\": \"Kerry Park\"
       },
       {
         \"Name\": \"Magnolia Park and views on Queen Anne\"
       },
       {
         \"Name\": \"Golden Gardens\"
       },
       {
         \"Name\": \"South Lake Union Park\"
       },
       {
         \"Name\": \"Interlaken Park\"
       },
       {
         \"Name\": \"Volunteer Park\"
       },
       {
         \"Name\": \"Vertical World Rock Climbing\"
       },
       {
         \"Name\": \"Trampoline Place\"
       },
       {
         \"Name\": \"Shooting Guns\"
       },
       {
         \"Name\": \"Casinos\"
       },
       {
         \"Name\": \"See a movie\"
       },
       {
         \"Name\": \"Cafe Mox & other game stores\"
       },
       {
         \"Name\": \"Chopstix Dueling Piano Bar\"
       },
       {
         \"Name\": \"Jet City Improv\"
       },
       {
         \"Name\": \"Motorcycle ride\"
       },
       {
         \"Name\": \"Swimming at indoor places\"
       },
       {
         \"Name\": \"Get a Tattoo\"
       },
       {
         \"Name\": \"Meditate (somewhere beautiful or @ home)\"
       },
       {
         \"Name\": \"Go for a run\"
       },
       {
         \"Name\": \"Tennis\"
       },
       {
         \"Name\": \"Ultimate Frisbee\"
       },
       {
         \"Name\": \"Road Biking\"
       },
       {
         \"Name\": \"Olympic Sculpture Park, Centennial Park\"
       },
       {
         \"Name\": \"Gasworks Park\"
       },
       {
         \"Name\": \"Kayaking\"
       },
       {
         \"Name\": \"Sailing\"
       },
       {
         \"Name\": \"Fishing\"
       },
       {
         \"Name\": \"Backpack/Camp\"
       },
       {
         \"Name\": \"Rock Climbing (outdoor)\"
       },
       {
         \"Name\": \"Sky Diving\"
       },
       {
         \"Name\": \"Scuba\"
       },
       {
         \"Name\": \"Mountain Biking\"
       },
       {
         \"Name\": \"Ice Skating\"
       },
       {
         \"Name\": \"Snowshoeing\"
       },
       {
         \"Name\": \"Mountaineering\"
       },
       {
         \"Name\": \"REI Adventure Trips\"
       },
       {
         \"Name\": \"Yakima, place Julie first went w/ /oktoberfest?\"
       },
       {
         \"Name\": \"Big/Little Si\"
       },
       {
         \"Name\": \"Ozette Triangle\"
       },
       {
         \"Name\": \"Lincoln Park and Beach\"
       },
       {
         \"Name\": \"Olympic Mountains\"
       },
       {
         \"Name\": \"Hurricane Ridge\"
       },
       {
         \"Name\": \"Ruby Beach\"
       },
       {
         \"Name\": \"Rialto Beach\"
       },
       {
         \"Name\": \"Hoh Rainforest\"
       },
       {
         \"Name\": \"Have a potluck (Sunday Brunch)\"
       },
       {
         \"Name\": \"Throw a Party\"
       },
       {
         \"Name\": \"Organize a scavenger hunt\"
       },
       {
         \"Name\": \"Wallace Falls Hike\"
       },
       {
         \"Name\": \"De Leo Wall Hike\"
       },
       {
         \"Name\": \"Geocaching\"
       },
       {
         \"Name\": \"Stand up paddle\"
       },
       {
         \"Name\": \"Medium gold\"
       },
       {
         \"Name\": \"Mini golf\"
       },
       {
         \"Name\": \"Real golf?\"
       },
       {
         \"Name\": \"Whitewater rafting\"
       },
       {
         \"Name\": \"Kayak whitewatering\"
       },
       {
         \"Name\": \"Yakima/Tieton\"
       },
       {
         \"Name\": \"Lopez Island\"
       },
       {
         \"Name\": \"Dodgeball\"
       },
       {
         \"Name\": \"Frolf\"
       },
       {
         \"Name\": \"Stone soup\"
       },
       {
         \"Name\": \"group camping trip\"
       },
       {
         \"Name\": \"zombie day - red water guns\"
       },
       {
         \"Name\": \"San juan\"
       },
       {
         \"Name\": \"Whistler\"
       },
       {
         \"Name\": \"Port Townsend\"
       },
       {
         \"Name\": \"Suncadia\"
       },
       {
         \"Name\": \"Whidbey Island\"
       },
       {
         \"Name\": \"add-a-ball\"
       },
       {
         \"Name\": \"blueberry picking\"
       },
       {
         \"Name\": \"poo-poo point\"
       },
       {
         \"Name\": \"Goldmeyer springs\"
       },
       {
         \"Name\": \"Snoqualmie Falls\"
       },
       {
         \"Name\": \"Bastyr Park\"
       },
       {
         \"Name\": \"Pinball Place\"
       },
       {
         \"Name\": \"MakerBotGarage\"
       },
       {
         \"Name\": \"Blow Glass\"
       },
       {
         \"Name\": \"Dave Egger's Place - Greenwood Space Travel Supply Co.\"
       },
       {
         \"Name\": \"Ada Technical Books\"
       },
       {
         \"Name\": \"Frye Free Art Museum\"
       },
       {
         \"Name\": \"The Fat Hen - yummy place we went for brunch with kurt\"
       },
       {
         \"Name\": \"The Conservatory\"
       },
       {
         \"Name\": \"The Walrus and the Carpenter\"
       },
       {
         \"Name\": \"The palm room - plant store\"
       },
       {
         \"Name\": \"chess\"
       },
       {
         \"Name\": \"rollerskating\"
       },
       {
         \"Name\": \"racquetball\"
       },
       {
         \"Name\": \"lynwood fruit\"
       },
       {
         \"Name\": \"lynwood pool, racquetball, and shit -\"
       },
       {
         \"Name\": \"Recreation Center & Pool - City of Lynnwood\"
       },
       {
         \"Name\": \"Keep-up\"
       },
       {
         \"Name\": \"indoor skydiving\"
       },
       {
         \"Name\": \"dttg\"
       },
       {
         \"Name\": \"bastyr\"
       },
       {
         \"Name\": \"Snoqualmie Falls\"
       },
       {
         \"Name\": \"Agua Verde\"
       },
       {
         \"Name\": \"salon of shame\"
       },
       {
         \"Name\": \"family fun center\"
       },
       {
         \"Name\": \"vertical world\"
       },
       {
         \"Name\": \"tractor square dancing\"
       }
     ]
   }
   "

  class << self

  # create_activites_via_static_json_string
  def quick_create
    create_activites(JSON_INPUT)
  end

  def create_activites(json_string_input)
    # puts JSON_INPUT
    json_hash = JSON.parse(json_string_input)
    puts json_hash.inspect
  end

  end
end
