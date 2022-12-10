class MusicList

    def initialize
        @songs_list = []
    end

    def add(song)
        unless @songs_list.include?(song)
            @songs_list << song
        end
    end

    def my_list
        @songs_list.empty? ? fail("There are no songs in your list. Add some!") : @songs_list.join(', ')
    end

end