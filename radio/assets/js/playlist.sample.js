/*
Sample Playlist
===============

Once songs are added rename to playlist.js

Manditory fields:
- url: the "http://" of a soundcloud track. If you've copied over "https://" please
  alter it. If not, then history will start mucking up
- rotation: in minutes of an hour ( 0 - 59 ). For super rare backlog set to 60

*/
var playlist = [
  {
    url: "http://soundcloud.com/[artist]/[song]",
    rotation:15
  },
  {
    url: "http://soundcloud.com/[artist]/[song]",
    rotation: 30
  }
];
