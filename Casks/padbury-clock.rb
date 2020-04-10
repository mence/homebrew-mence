# https://github.com/Homebrew/homebrew-cask/blob/5cf7b9f23d7fb7e6f2bab22d32f52f9a9d57a2de/Casks/padbury-clock.rb
# This cask is modified from the original blob to deal with fork created by Chris Short to resurrect this screensaver.

cask :v1 => 'padbury-clock' do
  version :latest
  sha256 :no_check

  # url 'http://padbury.me/clock/Padbury-Clock.zip' # This was the original URL
  url 'http://padbury.app/padbury-clock.zip'
  name 'Padbury Clock'
  # homepage 'http://padbury.me/' # This was the original homepage.
  homepage 'http://padbury.app/'
  license :gratis

  screen_saver 'Padbury Clock.saver'
end
