require 'json'

class Script

  # JSON_INPUT = "{
  #    \"activities\": [
  #      {
  #        \"name\": \"Seattle Shenter ONE\",
  #        \"image\": \"http://www.seattlecenter.com/\",
  #        \"min_price\": \"0\"
  #      }
  #    ]
  #  }"


  JSON_INPUT = "{
    \"activities\": [
      {
        \"name\": \"Indoor Skydiving\",
        \"url\": \"https://seattle.iflyworld.com/\",
        \"min_price\": \"60\",
        \"max_price\": \"110\",
        \"description\": \"Indoor skydiving, safe for kids, challenging for adults, exciting for teens and realistic for skydivers. No experience necessary and it is great fun for all ages, three and up! iFLY Seattle is the first ALL glass vertical wind tunnel in the world! \",
        \"image\": \"http://media-cdn.tripadvisor.com/media/photo-s/03/58/66/10/ifly-indoor-skydiving.jpg\",
        \"min_activity_level\": \"3\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Lakeview Cemetery (Bruce Lee)\",
        \"url\": \"http://lakeviewcemeteryassociation.com/\",
        \"min_price\": \"0\",
        \"description\": \"Lake View Cemetery is a cemetery located on Seattle, Washington, Capitol Hill just north of Volunteer Park. It is named for its view of Lake Washington to the east. It was founded in 1872 as the Seattle Masonic Cemetery. Final resting place of Bruce and Brandon Lee.\",
        \"image\": \"http://www.moosevilleusa.com/uploads/6/7/5/9/6759109/189377_orig.jpg\",
        \"min_activity_level\": \"0\",
        \"max_activity_level\": \"2\"
      },
      {
        \"name\": \"Greenlake\",
        \"url\": \"http://www.seattle.gov/parks/park_detail.asp?id=307\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"Green Lake is one of Seattle’s most beloved parks. Its expanse of water and green space in the center of a dense urban neighborhood draws thousands of people daily from all over the city. The park serves as a natural preserve for hundreds of species of trees and plants, as well as numerous birds and waterfowl. The newly reconstructed 2.8-mile path around the lake provides a perfect recreational spot for runners, bikers, skaters and walkers. Many others use the athletic fields or visit the park for boating, picnics and swimming. Also, make sure to visit the Green Lake Small Craft Center.\",
        \"image\": \"http://www.urbancondospaces.com/files/2011/07/Greenlake-Seattle-.jpg\",
        \"min_activity_level\": \"0\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Fremont Troll\",
        \"url\": \"http://fremont.com/about/fremonttroll-html/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"The Troll is a mixed media colossal statue, under the north end of the George Washington Memorial Bridge (also known as the Aurora Bridge). It is clutching an actual Volkswagen Beetle, as if it had just swiped it from the roadway above. He is interactive; visitors are encouraged to clamber on him or try to poke out his one good eye (a hubcap). The Troll is 5.5 m (18 ft) high, weighs 6,000 kg (13,000 lb), and is made of steel rebar, wire, and concrete.\",
        \"image\": \"http://fremont.com/wp-content/uploads/2011/12/Fremont_Troll.jpg\",
        \"min_activity_level\": \"0\",
        \"max_activity_level\": \"2\"
      },
      {
        \"name\": \"Snoqualmie Falls\",
        \"url\": \"http://www.snoqualmiefalls.com/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"Snoqualmie Falls is one of Washington state’s most popular scenic attractions. More than 1.5 million visitors come to the Falls every year. At the falls, you will find a two-acre park, gift shop, observation deck, the Salish Lodge and the famous 270 foot waterfall.\",
        \"image\": \"http://www.travelphotoadventures.com/wp-content/uploads/2012/08/61-Snoqualmie-Falls.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Saint Edward State Park at Bastyr\",
        \"url\": \"http://www.parks.wa.gov/577/Saint-Edward\",
        \"min_price\": \"0\",
        \"max_price\": \"10\",
        \"description\": \"Amazing playground, PERFECT for ‘Don’t Touch the Ground.’ Has a Grotto, Grand Dining Hall, Water Activities & Features, Boating, Fishing (freshwater), Personal watercraft use, Swimming, Water skiing, Picnicking, hiking, soccer, mountain biking, bicycling, swimming, bird watching, softball, and horse trails can be found in the Holmes Point area.\",
        \"image\": \"http://img1.sunset.timeinc.net/sites/default/files/image/2011/08/st-edward-state-park-kenmore-wa-playground-0811-x.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Space Needle\",
        \"url\": \"http://www.spaceneedle.com/home/\",
        \"min_price\": \"0\",
        \"max_price\": \"100\",
        \"description\": \"See Seattle from 520 feet on the Observation Deck. Trace the outlines of the Cascades against the misty horizon. Instagram Mt. Rainier. Track ferries and boats as they cruise through Elliott Bay. Listen to the distant hum of people, cars, trains, buses, and bikers. bustling around Downtown Seattle. It’s all up here, ready and waiting to be seen. \",
        \"image\": \"http://upload.wikimedia.org/wikipedia/commons/thumb/6/61/VolunteerParkNeedle.jpg/1280px-VolunteerParkNeedle.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"2\"
      },
      {
        \"name\": \"The Ducks\",
        \"url\": \"http://www.ridetheducksofseattle.com/\",
        \"min_price\": \"29\",
        \"max_price\": \"35\",
        \"description\": \"Tour Seattle by land and sea on a WWII amphibious landing craft! It's a party on wheels that floats!\",
        \"image\": \"http://upload.wikimedia.org/wikipedia/commons/c/c8/Ride_The_Ducks-Seattle.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"1\"
      },
      {
        \"name\": \"Underground Tours\",
        \"url\": \"http://undergroundtour.com/\",
        \"min_price\": \"18\",
        \"max_price\": \"18\",
        \"description\": \"A leisurely, guided walking tour beneath Seattle’s sidewalks and streets. As you roam the subterranean passages that once were the main roadways and first-floor storefronts of old downtown Seattle, our guides regale you with the storieswant you to hear. It’s history with a twist!\",
        \"image\": \"http://dguides.com/images/seattle/attractions/underground-tour.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Jefferson Park in Beacon Hill\",
        \"url\": \"http://www.seattle.gov/parks/park_detail.asp?id=114\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"Basketball, Skatepark, Tennis Court (Outdoor), Wading Pool and Water Features, Awesome Park\",
        \"image\": \"http://www.seattle.gov/parks/_images/pro%20parks/jefferson_park_play_area.jpg\",
        \"min_activity_level\": \"0\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"Burke Dinosaur UW Museum (1st Thurs free, open till 8pm)\",
        \"url\": \"http://www.burkemuseum.org/\",
        \"min_price\": \"10\",
        \"max_price\": \"10\",
        \"description\": \"Follow the journey of discovering super-sized prehistoric crocs and digging raptors at a free public lecture. See newly collected Triceratops fossils on display for the first time, along with dozens of other prehistoric plants and animals.\",
        \"image\": \"http://1.bp.blogspot.com/-aThLjjIkqu8/UcSHpsNSkGI/AAAAAAAAAM8/NWLreYXsWbM/s1600/June+13+(194).JPG\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Seattle Aquarium\",
        \"url\": \"http://www.seattleaquarium.org/\",
        \"min_price\": \"22\",
        \"max_price\": \"22\",
        \"description\": \"Crashing Waves Exhibit, two large exhibit pools that include touch zones allow visitors to see the tidepool life, a 12-foot high glass donut where visitors can be surrounded by moon jellies, a multi-species display featuring the giant Pacific octopus, and a 13-foot touch table where visitors can view some of the area's drifters including juvenile rockfish, sea stars, and plankton, Pacific Coral Reef, Ocean Oddities is an exhibit displaying pinecone fish, cowfish, flying gurnards, potbellied seahorses, and short dragonfish, Birds and Shores, Northwest Shores is an area which shows birds in a variety of habitats of the coastal Northwest. There is also a Shorebird exhibit, The Marine Mammals area includes exhibits for harbor seals, Northern fur seals, sea otters, and river otters, as well as the Orca Family Activity Center, Puget Sound Fish is a three-part exhibit that contains fish from the Puget Sound. The Underwater Dome is an exhibit viewed from a mostly transparent spherical undersea room in a 400,000-US-gallon tank.\",
        \"image\": \"http://www.seattleaquarium.org/image/private-events/Aquarium-Photos-017.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Woodland Zoo\",
        \"url\": \"http://www.zoo.org/\",
        \"min_price\": \"14\",
        \"max_price\": \"20\",
        \"description\": \"Zoomasium, Tropical Rain Forest Area, Northern Trail, African Savanna, Australasia, Temperate Forest, Carousel\",
        \"image\": \"http://www.dophinneywood.com/wp-content/uploads/2011/08/Zoopic1.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Waterfall Gardens\",
        \"url\": \"http://www.waterfallgardens.com/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"This secluded park features a 22-foot waterfall in the middle of Pioneer Square.\",
        \"image\": \"http://dguides.com/images/seattle/attractions/waterfall-garden-park.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Columbia Center Skyview Observatory\",
        \"url\": \"http://www.skyviewobservatory.com/\",
        \"min_price\": \"13\",
        \"max_price\": \"13\",
        \"description\": \"Columbia Center is the tallest skyscraper in the downtown Seattle skyline and the tallest building in the State of Washington. At 287.4264 m (943.000 ft) it is currently the second tallest structure on the West Coast. The tower has the tallest public viewing area on the West Coast and west of the Mississippi.\",
        \"image\": \"http://assets.regus.com/images/274/officespace/2_454x340.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Seattle Public Library\",
        \"url\": \"http://www.spl.org/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"The Seattle Public Library's Central Library is the flagship library of The Seattle Public Library system. The 11-story glass and steel building in downtown Seattle, Washington can hold about 1.45 million books and other materials, features underground public parking for 143 vehicles, and includes over 400 computers open to the public. The library has a unique, striking appearance, consisting of several discrete floating platforms seemingly wrapped in a large steel net around glass skin. In 2007, the building was voted #108 on the American Institute of Architects' list of Americans' 150 favorite structures in the US.\",
        \"image\": \"http://upload.wikimedia.org/wikipedia/commons/7/7f/2009-0604-19-SeattleCentralLibrary.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"2\"
      },
      {
        \"name\": \"Washington Arboretum\",
        \"url\": \"http://depts.washington.edu/uwbg/gardens/wpa.shtml\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"Washington Park Arboretum is a joint project of the University of Washington, the Seattle Department of Parks and Recreation, and the nonprofit Arboretum Foundation including a playfield and the Seattle Japanese Garden in its southwest corner. The entire length of Arboretum Creek is within the park.\",
        \"image\": \"http://media-cdn.tripadvisor.com/media/photo-s/02/9c/81/3d/fall-colors.jpg\",
        \"min_activity_level\": \"3\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"International District\",
        \"url\": \"http://www.cidbia.org/\",
        \"min_price\": \"0\",
        \"max_price\": \"100\",
        \"description\": \"The Chinatown-International District Business Improvement Area works to improve and promote Seattle’s Chinatown-International District. In addition to providing public safety and sanitation services, the CIDBIA coordinates several of the neighborhood’s major events including the Night Markets and Lunar New Year Celebration, in addition to Dragon Fest. The BIA also advocates on behalf of its constituents with respect to a host of public policy, planning, safety, and quality‐of‐life issues. \",
        \"image\": \"http://www.dazzlingplaces.com/Images/Seattle/Inter%20District/InternationalDistrict1.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Agua Verde\",
        \"url\": \"http://aguaverde.com/\",
        \"min_price\": \"17\",
        \"max_price\": \"75\",
        \"description\": \"Explore Seattle by kayak! Head towards Lake Union for views of the city, houseboats, and Gasworks Park – or venture through the Arboretum to paddle the water trails and check out the local flora and fauna. We stock a variety of boats for different body types and experience levels and we put people in boats for the first time every day! Come early on a weekday and take advantage of our weekday specials to enjoy kayaks, food and ambiance.\",
        \"image\": \"http://www.osualum.com/s/359/images/editor/seattle/agua-verde-630x425.png\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"4\"
      },
      {
        \"name\": \"The Ballard Locks\",
        \"url\": \"http://www.seattle.gov/tour/locks.htm\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"The Hiram M. Chittenden Locks is a complex of locks that sits at the west end of Salmon Bay, part of Seattle, Washington's Lake Washington Ship Canal. They are known locally as the Ballard Locks. The locks and associated facilities serve three purposes: To maintain the water level of the fresh water Lake Washington and Lake Union at 20–22 feet above sea level, To prevent the mixing of sea water from Puget Sound with the fresh water of the lakes, To move boats from the water level of the lakes to the water level of Puget Sound, and vice versa. Features a visitor’s center and botanical gardens.\",
        \"image\": \"http://seattletimes.com/ABPub/2008/04/28/2001902360.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"2\"
      },
      {
        \"name\": \"Family Fun Center\",
        \"url\": \"http://www.fun-center.com/\",
        \"min_price\": \"3\",
        \"max_price\": \"100\",
        \"description\": \"Lazer Runner, Max Flight, Bumper Cars, Fun Fortress, Frog Hopper, Go Karts, Euro Bungy, Miniature Golf, Sky Trail, Bumper Boats, Batting Cages.\",
        \"image\": \"http://www.seattlesouthside.com/system/assets/photos/424/large.jpg?1276722032\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Pioneer Square\",
        \"url\": \"http://www.pioneersquare.org/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"Welcome to the birthplace of Seattle. Laying claim as the city's first neighborhood, Pioneer Square is a richly historic place known for its Renaissance Revival architecture, First Thursday art walks, night life, delicious lunch spots, and quirky boutiques. Explore the depth and beauty of Seattle's first historic district. Come share the square.\",
        \"image\": \"http://www.seattle.gov/parks/pergola/images/piopergola02.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Beacon Food Forest\",
        \"url\": \"http://www.beaconfoodforest.org/\",
        \"min_price\": \"0\",
        \"max_price\": \"0\",
        \"description\": \"The goal of the Beacon Food Forest is to bring the richly diverse community together by fostering a Permaculture Tree Guild approach to urban farming and land stewardship. The Food Forest is set to include an Edible Arboretum with fruits gathered from regions around the world, a Berry Patch for canning, gleaning and picking, a Nut Grove with trees providing shade and sustenance, a Community Garden using the p-patch model for families to grow their own food, a Gathering Plaza for celebration and education, a Kid's Area for eduction and play and a Living Gateway to connect and serve as portals as you meander through the forest. \",
        \"image\": \"http://dinerjournal.com/wp-content/uploads/2013/05/beacon-6673406_f496.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Ballard Farmer's Market\",
        \"url\": \"https://ballardfarmersmarket.wordpress.com/\",
        \"min_price\": \"0\",
        \"max_price\": \"100\",
        \"description\": \"Year-round greenmarket with 100-plus vendors for organic, handmade & locally grown foods.\",
        \"image\": \"http://upload.wikimedia.org/wikipedia/commons/6/6f/Seattle_Ballard_Farmers_Market.jpg\",
        \"min_activity_level\": \"2\",
        \"max_activity_level\": \"3\"
      },
      {
        \"name\": \"Salon of Shame\",
        \"url\": \"http://salonofshame.com/\",
        \"min_price\": \"18\",
        \"max_price\": \"35\",
        \"description\": \"We invite you to join us as we drink and exploit our younger selves for your entertainment! The idea is simple: Seattleites stand and read from their worst adolescent writing, including middle school diaries, high school poetry, unsent letters, etc.\",
        \"image\": \"http://salonofshame.com/wp-content/uploads/2007/04/sos-300x300.jpg\",
        \"min_activity_level\": \"1\",
        \"max_activity_level\": \"2\"
      }
    ]
  }"


  class << self

    # create_activites_via_static_json_string
    def quick_create
      create_activites(JSON.parse(JSON_INPUT))
    end

    def create_activites(json_hash)
      puts "In create_activities"
      if json_hash['activities'] != nil && json_hash['activities'].length > 0
        json_hash['activities'].each do |activity|
          a = Activity.new(activity)
          a.save
        end
      end
    end

  end

end
