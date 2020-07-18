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
  },
  {
    first_name: "Keleia",
    last_name: "Elliot",
    password_digest: "",
    email: "k.elliot@gmail.com",
    artist_name: "Keleia",
    bio: "Seattle vocalist and songwriter",
    profile_picture: "https://i.ibb.co/rpX7jFB/photo-1578297925113-09148b4d1a5a.jpg"
  },
  {
    first_name: "Bradley",
    last_name: "Morry",
    password_digest: "",
    email: "b.morry@gmail.com",
    artist_name: "Boneyears",
    bio: "Been playing piano since I was 10, now making dream pop. Bostonian",
    profile_picture: "https://i.ibb.co/r4tZ1Zt/220px-Bones-logo.jpg"
  },
  {
    first_name: "Neil",
    last_name: "Stuart",
    password_digest: "",
    email: "neil.s@gmail.com",
    artist_name: "Seegulls",
    bio: "surf punk drummer, follow me at @nstudrums on twitter",
    profile_picture: "https://i.ibb.co/5T3cMqN/images.jpg"
  },
  {
    first_name: "Jeremy",
    last_name: "Andrews",
    password_digest: "",
    email: "j.andrews2@gmail.com",
    artist_name: "Jeremy Andrews",
    bio: "Cinema and videogame soundtracks.",
    profile_picture: "https://i.ibb.co/Ws9h8PV/Screen-Shot-2020-07-14-at-2-53-45-PM.png"
  },
  {
    first_name: "John",
    last_name: "Smith",
    password_digest: "",
    email: "johnsmith@gmail.com",
    artist_name: "johnsmith",
    bio: "expert",
    profile_picture: "https://i.ibb.co/Ws9h8PV/Screen-Shot-2020-07-14-at-2-53-45-PM.png"
  }
])

songs = Song.create!([
  {
    user_id: 1,
    title: "archive (pre-master)",
    description: "curious if this sounds good in yall's cars/on your speakers/laptops etc lmao",
    keywords: "electronic, spacebass, weird, distortion, hyperpop, bass music, soundcloud bass, trap",
    url: "https://soundcloud.com/morecreativityrecords/krma-archive-mcr",
    img_url: "https://i.ibb.co/cgjqGVh/Screen-Shot-2020-07-11-at-12-53-10-PM.png"
  },
  {
    user_id: 1,
    title: "bloodhound (wip) (ft yb)",
    description: "focusing on getting better with the builds, looking for improvement on stereo field of the fx, heavier bass - if it sounds too thin",
    keywords: "trap",
    url: "https://soundcloud.com/krmabeats/krma-x-yb-bloodhound",
    img_url: "https://i.ibb.co/hK9kfSZ/Screen-Shot-2020-07-11-at-1-03-15-PM.png"
  },
  {
    user_id: 2,
    title: "Loaded",
    description: "Looking for feedback on synths/drums in drop at 1:22.",
    keywords: "progressive house, edm, house",
    url: "https://soundcloud.com/simoncameronmusic/loaded",
    img_url: "https://i.ibb.co/TrcmV17/Screen-Shot-2020-07-11-at-1-53-22-PM.png"
  },
  {
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
    song_id: 1,
    author: "",
    notes: "this could be a lot louder",
    song_timestamp: 0,
    user_id: 1
  },
  {
    song_id: 1,
    author: "",
    notes: "this could be lower in volume - drop a few dB and if you want to, use some reverb to push it back in the mix",
    song_timestamp: 0,
    user_id: 2
  },
  {
    song_id: 2,
    author: "",
    notes: "needs more cowbell",
    song_timestamp: 0,
    user_id: 3
  }, 
  {
    song_id: 3,
    author: "fakename",
    notes: "i hate it",
    song_timestamp: 0,
    user_id: ""
  },
  {
    song_id: 4,
    author: "",
    notes: "you should watch this youtube tutorial on this thing: https://www.youtube.com/watch?v=yi0J9JsRdI4&t=912s",
    song_timestamp: 0,
    user_id: 4 
  },
  {
    song_id: 4,
    author: "",
    notes: "i'd saw this is actually close - spread it out panning left/right, a little EQ off the bottom up to maybe around 300hz",
    song_timestamp: 0,
    user_id: 4 
  },
  {
    song_id: 2,
    author: "",
    notes: "cut this noise a little bit sooner with a gradual filter",
    song_timestamp: 0,
    user_id: 2
  }
])

tags = Tag.create!([
  {
    name: "Drums"
  },
  {
    name: "Instrument"
  },
  {
    name: "Bass"
  },
  {
    name: "FX"
  },
  {
    name: "Compression"
  },
  {
    name: "EQ"
  },
  {
    name: "Reverb"
  }
])

comment_tags = CommentTag.create!([
  {
    comment_id: 1,
    tag_id: 5
  },
  {
    comment_id: 1,
    tag_id: 6
  },
  {
    comment_id: 1,
    tag_id: 2
  },
  {
    comment_id: 2,
    tag_id: 2
  },
  {
    comment_id: 2,
    tag_id: 4
  },
  {
    comment_id: 2,
    tag_id: 7
  },
  {
    comment_id: 3, 
    tag_id: 1
  },
  {
    comment_id: 3, 
    tag_id: 5
  },
  {
    comment_id: 4,
    tag_id: 2
  },
  {
    comment_id: 5, 
    tag_id: 1
  },
  {
    comment_id: 5, 
    tag_id: 2
  },
  {
    comment_id: 5, 
    tag_id: 5
  },
  {
    comment_id: 5, 
    tag_id: 6
  },
  {
    comment_id: 6, 
    tag_id: 3
  },
  {
    comment_id: 6, 
    tag_id: 6
  },
  {
    comment_id: 7, 
    tag_id: 6
  },
  {
    comment_id: 7, 
    tag_id: 4
  }
])