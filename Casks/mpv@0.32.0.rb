# original source: https://github.com/Homebrew/homebrew-cask/blob/d784d8c5cd205ff746c1108ecf638c2fbfb8b00e/Casks/mpv.rb

cask 'mpv@0.32.0' do
  version '0.32.0'
  sha256 '5c1b21412a0cfa8fbd06b18aa3cea919c1b9ce86d3aa39672cbc714cb753004c'

  # laboratory.stolendata.net/~djinn/mpv_osx/ was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  name 'mpv'
  desc 'Media player based on MPlayer and mplayer2'
  homepage 'https://mpv.io/'

  livecheck do
    url 'https://laboratory.stolendata.net/~djinn/mpv_osx/'
  end

  conflicts_with formula: 'mpv'
  depends_on macos: '>= :yosemite'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage 'documentation/man/mpv.1'

  zap trash: [
    '~/.config/mpv',
    '~/Library/Logs/mpv.log',
    '~/Library/Preferences/io.mpv.plist',
    '~/Library/Preferences/mpv.plist'
  ]
end
