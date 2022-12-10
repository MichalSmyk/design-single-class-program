Music List Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface

```ruby
class MusicList

def initialize
  # initializes an empty array of songs to be pushed 
end

def add(song) #song is a string
  #adds songs 
end

def my_list
  #returns list of my songs

end
end

```

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

```ruby
#1

#check for the class first

music_list = MusicList.new
expect(music_list).to be_kind_of(MusicList)

#2
#add song

music_list = MusicList.new
music_list.add('Jungle')
expect(music_list.my_list).to eq ('Jungle')


#3
#add another song

music_list = MusicList.new
music_list.add('Jungle')
music_list.add('Blackbird')
expect(music_list.my_list).to eq ('Jungle, Blackbird')


#4
#if song already exists do nothing 

music_list = MusicList.new
music_list.add('Jungle')
music_list.add('Blackbird')
music_list.add('Blackbird')
expect(music_list.my_list).to eq ('Jungle, Blackbird')

#5

#return error message when no songs in my_list

music_list = MusicList.new
expect { music_list.my_list}.to raise_error "There are no songs in your list. Add some!"


```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

