describe RSpotify::Artist do

  describe 'valid artist' do
    
    before(:each) do
      # Get Arctic Monkeys as a testing sample
      @artist = RSpotify::Artist.find('7Ln80lUS6He07XvHI8qqHH')
    end

    it 'should have correct attributes' do
      expect(@artist.external_urls['spotify']) .to eq      'https://open.spotify.com/artist/7Ln80lUS6He07XvHI8qqHH'
      expect(@artist.genres)                   .to include 'Alternative Pop/Rock', 'Alternative/Indie Rock', 'Indie', 'Indie Rock', 'Pop/Rock'
      expect(@artist.href)                     .to eq      'https://api.spotify.com/v1/artists/7Ln80lUS6He07XvHI8qqHH'
      expect(@artist.id)                       .to eq      '7Ln80lUS6He07XvHI8qqHH'
      expect(@artist.images)                   .to include ({'height' => 1333, 'width' => 1000, 'url' => 'https://i.scdn.co/image/fa2e9ca1a27695ae7f8013350d9a53e11d523ece'})
      expect(@artist.name)                     .to eq      'Arctic Monkeys'
      expect(@artist.popularity)               .to be      > 0
      expect(@artist.type)                     .to eq      'artist'
      expect(@artist.uri)                      .to eq      'spotify:artist:7Ln80lUS6He07XvHI8qqHH'
    end

  end
end
