cask "soulver2" do
  version "2.9.0-6104"
  sha256 :no_check

  url "https://soulver.app/download-soulver-2", referer: "https://documentation.soulver.app/faq"
  name "Soulver 2"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  auto_updates false
  depends_on macos: ">= :yosemite"
  conflicts_with cask: "homebrew/cask-versions/soulver2"

  app "Soulver 2.app"

  zap trash: [
    "~/Library/Application Support/Soulver",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.soulver.mac.sfl2",
    "~/Library/Caches/com.acqualia.soulver",
    "~/Library/Caches/com.apple.helpd/Generated/com.acqualia.soulver.help*#{version.sub(/-\d+/, "")}",
    "~/Library/Caches/com.apple.helpd/SMDHelpData/Other/English/HelpSDMIndex/com.acqualia.soulver.help*#{version.sub(/-\d+/, "")}",
    "~/Library/Cookies/com.acqualia.soulver.binarycookies",
    "~/Library/Preferences/com.acqualia.soulver.plist",
    "~/Library/Group Containers/8HSTZV64A5.com.acqualia.soulver",
    "~/Library/Autosave Information/Unsaved Soulver Document*",
  ]
end
