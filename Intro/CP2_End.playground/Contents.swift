import Cocoa

let albums = ["Memories Do Not Open", "Sick Boy", "World War Joy", "Sick Boy", "So Far So Good"]

print(albums.count)

let uniqueAlbums = Set(albums)
//We won't need to add a [] in the Set function as the "albums" we used is a array itself
//If we add a [] to it then the whole "albums" will only be counted as a single entity

print(uniqueAlbums.count)
