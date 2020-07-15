# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)


users = User.create!([
  {
    first_name: "Michael",
    last_name: "Marie",
    password_digest: "",
    email: "michael.marie@gmail.com",
    artist_name: "KRMA",
    bio: "House music. Palm Springs",
    profile_picture: "https://pbs.twimg.com/media/Dyg-PPzXcAAY5Wv.jpg"
  },
  {
    first_name: "Simon",
    last_name: "Cameron",
    password_digest: "",
    email: "simon.cameron@gmail.com",
    artist_name: "Don't Tell",
    bio: "Sable Valley | Deadbeats | Jadū Dala",
    profile_picture: "https://www.clipartmax.com/png/middle/90-903229_dancing-profile-morgana-persona-5-morgana-human.png"
  },
  {
    first_name: "Louie",
    last_name: "Gorman",
    password_digest: "",
    email: "lubu@gmail.com",
    artist_name: "Jersea",
    bio: "“I was born to make mistakes, not to fake perfection.”-Drake",
    profile_picture: "https://i.ibb.co/DghxyjQ/Screen-Shot-2020-07-11-at-12-10-35-PM.png"
  }
])

songs = Song.create!([
  {
    id: 1,
    user_id: 1,
    title: "archive (pre-master)",
    description: "curious if this sounds good in yall's cars/on your speakers/laptops etc lmao",
    keywords: "electronic, spacebass, weird, distortion, hyperpop, bass music, soundcloud bass, trap",
    url: "https://soundcloud.com/morecreativityrecords/krma-archive-mcr",
    img_url: "https://i.ibb.co/cgjqGVh/Screen-Shot-2020-07-11-at-12-53-10-PM.png"
  },
  {
    id: 2,
    user_id: 1,
    title: "bloodhound (wip) (ft yb)",
    description: "focusing on getting better with the builds, looking for improvement on stereo field of the fx, heavier bass - if it sounds too thin",
    keywords: "trap",
    url: "https://soundcloud.com/krmabeats/krma-x-yb-bloodhound",
    img_url: "https://i.ibb.co/hK9kfSZ/Screen-Shot-2020-07-11-at-1-03-15-PM.png"
  },
  {
    id: 3,
    user_id: 2,
    title: "Loaded",
    description: "Looking for feedback on synths/drums in drop at 1:22.",
    keywords: "progressive house, edm, house",
    url: "https://soundcloud.com/simoncameronmusic/loaded",
    img_url: "https://i.ibb.co/TrcmV17/Screen-Shot-2020-07-11-at-1-53-22-PM.png"
  },
  {
    id: 4,
    user_id: 3,
    title: "midnite slimehead (demo)",
    description: "first cut - looking for overall gain feedback, if anything sticks out too loudly. i'd like to work a little more of a general soundscape like this: https://soundcloud.com/flume/the-difference-feat-toro-y-moi",
    keywords: "dark, nighttime, trap, synth, 80s, foley, slimy, dark, midnight",
    url: "https://soundcloud.com/jersea/midnite-slimehead/s-H9n8QQvOxEY",
    img_url: "https://i.ibb.co/HGwGPDq/Screen-Shot-2020-07-11-at-1-46-00-PM.png"
  }
])

comments = Comment.create!([
  {
    id: 1,
    song_id: 1,
    author: "",
    notes: "this could be a lot louder",
    song_timestamp: 0,
    user_id: 1
  },
  {
    id: 2,
    song_id: 1,
    author: "",
    notes: "this could be lower in volume - drop a few dB and if you want to, use some reverb to push it back in the mix",
    song_timestamp: 0,
    user_id: 2
  },
  {
    id: 3,
    song_id: 2,
    author: "",
    notes: "needs more cowbell",
    song_timestamp: 0,
    user_id: 3
  }, 
  {
    id: 4,
    song_id: 3,
    author: "fakename",
    notes: "i hate it",
    song_timestamp: 0,
    user_id: ""
  },
  {
    id: 5,
    song_id: 4,
    author: "",
    notes: "you should watch this youtube tutorial on this thing: https://www.youtube.com/watch?v=yi0J9JsRdI4&t=912s",
    song_timestamp: 0,
    user_id: 4 
  },
  {
    id: 6,
    song_id: 4,
    author: "",
    notes: "i'd saw this is actually close - spread it out panning left/right, a little EQ off the bottom up to maybe around 300hz",
    song_timestamp: 0,
    user_id: 4 
  },
  {
    id: 7,
    song_id: 2,
    author: "",
    notes: "cut this noise a little bit sooner with a gradual filter",
    song_timestamp: 0,
    user_id: 2
  }
])

tags = Tag.create!([
  {
    id: 1,
    name: "Drums"
  },
  {
    id: 2,
    name: "Instrument"
  },
  {
    id: 3,
    name: "Bass"
  },
  {
    id: 4,
    name: "FX"
  },
  {
    id: 5, 
    name: "Compression"
  },
  {
    id: 6,
    name: "EQ"
  },
  {
    id: 7,
    name: "Reverb"
  }
])

comment_tags = CommentTag.create!([
  {
    id: 1,
    comment_id: 1,
    tag_id: 5
  },
  {
    id: 2,
    comment_id: 1,
    tag_id: 6
  },
  {
    id: 3,
    comment_id: 1,
    tag_id: 2
  },
  {
    id: 4,
    comment_id: 2,
    tag_id: 2
  },
  {
    id: 5,
    comment_id: 2,
    tag_id: 4
  },
  {
    id: 6,
    comment_id: 2,
    tag_id: 7
  },
  {
    id: 7,
    comment_id: 3, 
    tag_id: 1
  },
  {
    id: 8,
    comment_id: 3, 
    tag_id: 5
  },
  {
    id: 9,
    comment_id: 4,
    tag_id: 2
  },
  {
    id: 10,
    comment_id: 5, 
    tag_id: 1
  },
  {
    id: 11,
    comment_id: 5, 
    tag_id: 2
  },
  {
    id: 12,
    comment_id: 5, 
    tag_id: 5
  },
  {
    id: 13,
    comment_id: 5, 
    tag_id: 6
  },
  {
    id: 14,
    comment_id: 6, 
    tag_id: 3
  },
  {
    id: 15,
    comment_id: 6, 
    tag_id: 6
  },
  {
    id: 16,
    comment_id: 7, 
    tag_id: 6
  },
  {
    id: 17,
    comment_id: 7, 
    tag_id: 4
  }
])