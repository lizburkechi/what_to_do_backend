puts "Deleting Activities..."
puts "Deleting Notes..."
Activity.destroy_all
Note.destroy_all
User.destroy_all
User.reset_pk_sequence
Activity.reset_pk_sequence
Note.reset_pk_sequence
puts "Creating Activities..."
puts "Creating Notes..."


liz = User.create(username: "LizBurke", password: "lizburke1")
jacki = User.create(username: "JackiSprinkle", password: "jacki1")
vaish = User.create(username: "VaishPalavalli", password: "vaish1")
tam = User.create(username: "TamDang", password: "tam1")
delance = User.create(username: "DelanceFinney", password: "delance1")


activities = Activity.create([
    {
        activity_name: "Learn Express.js",
        category: "education",
        participants: 1,
        link: "https://expressjs.com/"
    },
    {
        activity_name: "Meditate for 5 Minutes",
        category: "relaxation",
        participants: 1,
        link: "https://www.headspace.com/meditation/5-minute-meditation"
    },
    {
        activity_name: "See an Event at the United Center",
        category: "recreational",
        participants: 1,
        link: "https://www.unitedcenter.com/"
    },
    {
        activity_name: "See a Movie with a Few Friends at Regal Webster Place",
        category: "social",
        participants: 4,
        link: "https://www.regmovies.com/theatres/regal-webster-place/1793#/"
    },
    {
        activity_name: "Check out a New Music Genre with a Friend",
        category: "music",
        participants: 2,
        link: "https://www.spotify.com/us/"
    },
    {
        activity_name: "Go to the Field Museum",
        category: "education",
        participants: 1,
        link: "https://www.fieldmuseum.org/visit/accessibility"
    },
    {
        activity_name: "Visit Navy Pier",
        category: "recreation",
        participants: 1,
        link: "https://navypier.org/plan-your-visit/guest-services-and-accessibility/"
    },
    {
        activity_name: "Go to a Show at Subterranean",
        category: "music",
        participants: 1,
        link: "https://www.subt.net/faqs/"
    },
    {
        activity_name: "Go to a White Sox Game",
        category: "sports",
        participants: 4,
        link: "https://www.mlb.com/whitesox/ballpark/disability-access-guide"
    },
    {
        activity_name: "Visit Garfield Park Conservatory",
        category: "education",
        participants: 2,
        link: "https://garfieldconservatory.org/accessibility/"
    },
    {
        activity_name: "Take the Chicago Architecture Boat Tour",
        category: "recreation",
        participants: 1,
        link: "https://www.cruisechicago.com/accessibility"
    },
    {
        activity_name: "Visit the DuSable Museum of African American History",
        category: "education",
        participants: 1,
        link: "https://easyaccesschicago.org/access_info/museums.php?id=8"
    },
    {
        activity_name: "Get Dinner with Friends at Ja'Grill",
        category: "restaurants",
        participants: 4,
        link: "https://www.jagrill.com/"
    },
    {
        activity_name: "Have Dinner and Drinks at Alinea",
        category: "restaurants",
        participants: 2,
        link: "https://www.alinearestaurant.com/"
    },
    {
        activity_name: "Grab a Drink at Little Bad Wolf",
        category: "bars",
        participants: 1,
        link: "https://www.littlebadwolfchicago.com/"
    },
    {
        activity_name: "Walk the Boardwalk at Lincoln Park Zoo",
        category: "outdoors",
        participants: 1,
        link: "https://www.lpzoo.org/visit/accessibility/"
    },
    {
        activity_name: "See a Bulls Game at the United Center",
        category: "sports",
        participants: 1,
        link: "https://www.unitedcenter.com/venue/accessibility-guide/"
    },
    {
        activity_name: "Go up to the Skydeck at Willis Tower (Sears Tower)",
        category: "recreation",
        participants: 1,
        link: "https://wheelchairtravel.org/chicago/attractions/"
    },
    {
        activity_name: "See a Show at the Chicago Theatre",
        category: "entertainment",
        participants: 1,
        link: "https://www.msg.com/the-chicago-theatre/disabled-services"
    },
    {
        activity_name: "Eat some Chicago Style Pizza with a Friend at Pizzeria Uno",
        category: "restaurants",
        participants: 2,
        link: "https://www.pizzeriaunodue.com/"
    },
    {
        activity_name: "Have a Craft Cocktail at the Whistler",
        category: "bars",
        participants: 1,
        link: "https://whistlerchicago.com/"
    },
])


notes = Note.create!([
    {
        content: "Expressjs.com is compatible with google screen reader extension and other screen reading technologies for visually impaired individuals.",
        user_id: User.first.id,
        activity_id: 1,
    },
    {
        content: "Headspace.com offers a listen along audio track for visually impaired persons, however is not suitable for people with auditory impairment.",
        user_id: User.second.id,
        activity_id: 2,
    },
    {
        content: "Each of the 46 concession stands are wheelchair accessible and elevators are located next to Gates 3 and 7.",
        user_id: User.third.id,
        activity_id: 3,
    },
    {
        content: "Open spaces within the theates for wheelchairs but no handicap accessible / disabled aware seating outside the theater. Only tall chairs at tall tables.",
        user_id: User.fourth.id,
        activity_id: 4,
    },
    {
        content: "Only offers lyrics to select songs and is not fully accessible to the hearing impared.",
        user_id: User.second.id,
        activity_id: 5,
    },{
        content: "Highly reccommend Field Museum for All, an app for planning your visit with accessibility in mind. It offers a customizable scheduling tool, a sensory friendly map of the museum and exibition previews to better inform guests with sensory disabilities what to expect.",
        user_id: User.first.id,
        activity_id: 6,
    },
    {
        content: "There are no maps available with ADA accessible locations marked despite advertising it on thier website.",
        user_id: User.fourth.id,
        activity_id: 7,
    },
    {
        content: "The website says that the first floor is wheelchair accessible including bathrooms and is not true. There is an eight inch (platform) stage which you need to be able to pass over to reach the 'accessible' bathroom.",
        user_id: User.third.id,
        activity_id: 8,
    },
    {
        content: "We were happily surprised to find out that you can request a dedicated ASL interpreter on the website in advance. Once we got there they also let us know that often even without notice there are interpreters on hand available!",
        user_id: User.fifth.id,
        activity_id: 9,
    },
    {
        content: "Call ahead if you will need to use a wheelchair. They are available but limited!",
        user_id: User.fifth.id,
        activity_id: 10,
    },
    {
        content: "They will not allow you to bring your motorized wheelchair or scooter on board but offer manual wheelchairs for people who can transfer on site.",
        user_id: User.fourth.id,
        activity_id: 11,
    },
    {
        content: "Some exhibit videos are captioned.",
        user_id: User.second.id,
        activity_id: 12,
    },
    {
        content: "The inside gets very packed but there is some outdoor seating if you are looking for a more sensory friendly experience!",
        user_id: User.third.id,
        activity_id: 13,
    },
    {
        content: "First floor only offers wheelchair accessible dining and bathrooms.",
        user_id: User.fifth.id,
        activity_id: 14,
    },
    {
        content: "Offers wheelchair accessible seating and bathroooms.",
        user_id: User.fifth.id,
        activity_id: 15,
    },
    {
        content: "Great outdoor experience for those with sensory disabilities.",
        user_id: User.first.id,
        activity_id: 16,
    },
    {
        content: "You can pick up personal headsets (assistive listening) for free at the guest relations booth!",
        user_id: User.second.id,
        activity_id: 17,
    },
    {
        content: "Elevator access is available to the skydeck.",
        user_id: User.third.id,
        activity_id: 18,
    },
    {
        content: "Heads up - Personal listening devices are available at the coat check!",
        user_id: User.fourth.id,
        activity_id: 19,
    },
    {
        content: "Very loud not reccommended for those with sensory or auditory related disabilities. Offers some outdoor seating depending on weather.",
        user_id: User.fifth.id,
        activity_id: 20,
    },
])

puts "seeded"