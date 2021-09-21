cask "soulver2" do
  version "2.9.0-6104"
  sha256 "2aaa67f6c08e1aa540d9314ef2abb72195b92b618a81366ff57386dc443b77f3"

  url "https://soulver.app/download-soulver-2", referer: "https://documentation.soulver.app/faq"
  name "Soulver 2"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  auto_updates false
  depends_on macos: ">= :yosemite"

  app "Soulver 2.app"

  zap trash: [
    "~/Library/Application Support/Soulver",
    "~/Library/Preferences/com.acqualia.soulver.plist",
    "~/Library/Autosave Information/Unsaved Soulver Document*",
  ]
end

