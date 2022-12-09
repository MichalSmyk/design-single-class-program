require_relative '../lib/music_list'

RSpec.describe MusicList do
    it 'initializes' do 
        music_list = MusicList.new
        expect(music_list).to be_kind_of (MusicList)
    end
end