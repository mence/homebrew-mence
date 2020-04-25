# https://github.com/Homebrew/homebrew-cask/blob/d43117076f69091c59d247e059c2b6c40d94877f/Casks/polar-clock.rb

cask 'polar-clock' do
  version '3.0'
  sha256 '3260e4bfb6ecd2ffe0267d11b65e7698773f0d12b8480dcd8aedafa30762e853'

  url 'http://blog.pixelbreaker.com/downloads/polarclock/PolarClock3_osx_snow_leopard.zip'
  name 'PolarClock Screensaver'
  homepage 'http://blog.pixelbreaker.com/polarclock'

  screen_saver 'PolarClock 3.0.saver'
end
