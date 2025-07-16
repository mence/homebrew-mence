cask "slack@4.19" do
  version "4.19.0"

  if Hardware::CPU.intel?
    sha256 "4fbb9b6f0d08211d72cfe377e12e5b663420208ad69c6eb44a46add8210d4536"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/x64/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"
  else
    sha256 "fba05bc86f380642b41822db343e87ec516ffced9a3cbc72c5377befdb0a7ad7"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/arm64/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"
  end

  name "Slack 4.19"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/"

  auto_updates false
  conflicts_with cask: "homebrew/cask/slack"
  depends_on macos: ">= :el_capitan"

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
    "~/Library/Application Support/Slack",
    "~/Library/Caches/com.tinyspeck.slackmacgap",
    "~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt",
    "~/Library/Containers/com.tinyspeck.slackmacgap",
    "~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService",
    "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
    "~/Library/Group Containers/*.slack",
    "~/Library/HTTPStorages/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]

  caveats "Slack has officially deprecated this version. Whilst it may install successfully, you may be blocked from using it at an API level when the app opens."

end
