cask 'alfred@2.9_466' do
  version '2.9_446'
  sha256 '26a99cc0b96a4acee02bbc162ee433d9f1b20518ba8acc9691564b2c3698ed6a'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  desc "Application launcher and productivity software"
  homepage 'https://www.alfredapp.com/'
  # license :freemium

  auto_updates false
  # accessibility_access true

  app 'Alfred 2.app'

  uninstall quit:       'com.runningwithcrayons.Alfred-2',
            login_item: 'Alfred 2'

  zap delete: [
                '~/Library/Application Support/Alfred 2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-2',
                '~/Library/Caches/com.runningwithcrayons.Alfred-Preferences',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-2.plist',
                '~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist',
                '~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState',
              ]
end
