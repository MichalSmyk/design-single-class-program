require_relative '../lib/music_list'

RSpec.describe MusicList do
    it 'checks for the class' do 
        music_list = MusicList.new
        expect(music_list).to be_kind_of(MusicList)
    end
    it 'adds song to the list' do 
        music_list = MusicList.new
        music_list.add('Jungle')
        expect(music_list.my_list).to eq 'Jungle'
    end
    it 'adds another song' do 
        music_list = MusicList.new
        music_list.add('Jungle')
        music_list.add('Blackbird')
        expect(music_list.my_list).to eq ('Jungle, Blackbird')
    end
    it 'if songs already exists in the list do nothing' do 
        music_list = MusicList.new
        music_list.add('Jungle')
        music_list.add('Blackbird')
        music_list.add('Blackbird')
        expect(music_list.my_list).to eq ('Jungle, Blackbird')
    end
    it 'gives error message when list is empty' do
        music_list = MusicList.new
        expect { music_list.my_list}.to raise_error "There are no songs in your list. Add some!"
    end
end