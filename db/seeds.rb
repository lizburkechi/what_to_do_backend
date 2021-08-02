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


liz = User.create(username: "LizBurke", password: "liz1")
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
])

notes = Note.create!([
    {
        content: "Expressjs.com is compatible with google screen reader extension and other screen reading technologies for visually impaired individuals.",
        user_id: User.first.id,
        activity_id: Activity.first.id
    },
    {
        content: "Headspace.com offers a listen along audio track for visually impaired persons, however is not suitable for people with auditory impairment. An ASL meditation playlist is available at https://www.youtube.com/playlist?list=PL4WhbP0xwGB7syvK57c3sSW0B9gKQs7Px ",
        user_id: User.second.id,
        activity_id: Activity.second.id
    },
    {
        content: "All ATMs are marked in braille and can be found at the following locations: Box Office lobby near Gate 4, 100 level concourse at section 105/106 and 117/118, 200 level at section 220/221 and on the 300 level concourse at section 327/328. Each of the 46 concession stands are wheelchair accessible and elevators are located next to Gates 3 and 7 for you and a companion.",
        user_id: User.third.id,
        activity_id: Activity.third.id
    },
    {
        content: "Fully accessible bathrooms and parking garage with elevator to theatre level. Open spaces within the theates for wheelchairs but no handicap accessible / disabled aware seating outside the theater. Only tall chairs at tall tables.",
        user_id: User.first.id,
        activity_id: Activity.fourth.id
    },
    {
        content: "Spotify only offers lyrics to select songs and is not fully accessible to the hearing impared. They have recently updated the app so that mobile devices set to 'Larger Text' will apply changes within the app to make text easier to read for the visdually impaired.",
        user_id: User.second.id,
        activity_id: Activity.fifth.id
    },{
        content: "Expressjs.com is compatible with google screen reader extension and other screen reading technologies for visually impaired individuals.",
        user_id: User.first.id,
        activity_id: Activity.fourth.id
    },
    {
        content: "Headspace.com offers a listen along audio track for visually impaired persons, however is not suitable for people with auditory impairment. An ASL meditation playlist is available at https://www.youtube.com/playlist?list=PL4WhbP0xwGB7syvK57c3sSW0B9gKQs7Px ",
        user_id: User.second.id,
        activity_id: Activity.second.id
    },
    {
        content: "All ATMs are marked in braille and can be found at the following locations: Box Office lobby near Gate 4, 100 level concourse at section 105/106 and 117/118, 200 level at section 220/221 and on the 300 level concourse at section 327/328. Each of the 46 concession stands are wheelchair accessible and elevators are located next to Gates 3 and 7 for you and a companion.",
        user_id: User.third.id,
        activity_id: Activity.fourth.id
    },
    {
        content: "Fully accessible bathrooms and parking garage with elevator to theatre level. Open spaces within the theates for wheelchairs but no handicap accessible / disabled aware seating outside the theater. Only tall chairs at tall tables.",
        user_id: User.fifth.id,
        activity_id: Activity.fourth.id
    },
    {
        content: "Spotify only offers lyrics to select songs and is not fully accessible to the hearing impared. They have recently updated the app so that mobile devices set to 'Larger Text' will apply changes within the app to make text easier to read for the visdually impaired.",
        user_id: User.fifth.id,
        activity_id: Activity.fifth.id
    },
])

puts "seeded"