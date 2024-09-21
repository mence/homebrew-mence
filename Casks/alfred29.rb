cask 'alfred29' do
  version '2.9_446'
  sha256 'c22e74e0cf2ea82d35cb4c81b5408dd29f573324cb2aa924a4bc3158af8d033a'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  # license :freemium

  auto_updates false
  # accessibility_access true

  app 'Alfred 2.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end

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
