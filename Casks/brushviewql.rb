# Last updated in https://github.com/Homebrew/homebrew-cask/blob/6ae12ac924f7bf1485fda22a262e6a93c4c1f2eb/Casks/brushviewql.rb
# Removed in https://github.com/Homebrew/homebrew-cask/commit/59e93153c88c7ed34d1656e6cd602f7a62d62f95
# BrushViewQL is a QuickLook plugin for viewing Photoshop Brushes

cask 'brushviewql' do
  version '1.1'
  sha256 '5211b8b62a8d03a9859c96ebba94fa3262e633a3f7420a1972eaa1ab37b1347f'

  url 'http://brushviewer.sourceforge.net/brushviewql.zip'
  appcast 'https://sourceforge.net/projects/brushviewer/rss'
  name 'BrushViewQL'
  homepage 'http://brushviewer.sourceforge.net/'

  qlplugin 'BrushViewQL/BrushViewQL.qlgenerator'
end
