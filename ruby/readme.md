# ruby

## Day 1

Find:
- [X] ruby API
- [X] Programmer's Guide
- [X] method to substitute part of a string
- [X] REs
- [X] ranges

Do:
- [X] "Hello World"
- [X] For the string "Hello, Ruby," find the index of the word "ruby"
- [X] Print your name ten times
- [X] print the string "This is sentence number 1," where the number 1 changes from 1 to 10
- [X] Run a program from file
- [X] Bonus: Guess a number game


## Classes
```rb
class Song
# class variable - accessible by all instances of Song
@@plays = 0

def initialize(name, artist, duration)
  @name = name
  @artist = artist
  @duration = duration
  end

  #"getter" and "setter"
  # only attr to combine them 
  attr_reader :name, :artist, :duration
  attr_writer :duration

  def to_s
    "Song: #{@name}, #{@aritst}"
  end

  # class method - called with Song.whatever
  def Song.whatever(songId)
    # delete stuff
  end
end

# inheritance
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  # defining methods that call super method
  def to_s
    super + "#{@lyrics}"
  end 

end
```
