cask 'screenstagram' do
  version '2.01'
  sha256 :no_check

  url 'http://screenstagram.s3.amazonaws.com/screenstagram_2.01.dmg'
  name 'Screenstagram 2 Screensaver'
  homepage 'http://screenstagram.s3.amazonaws.com/download.html'

  screen_saver 'Screenstagram 2.saver'
end
