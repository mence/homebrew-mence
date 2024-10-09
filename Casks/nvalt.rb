cask "nvalt" do
    version '2.2.8-128'
    sha256 "85420c2a8d505a580b4aa4f0ef4662f08aa4af6139fb4ed448752b6b6e8fd671"

    # https://github.com/ttscoff/nv/releases/download/2.2.8/nvALT2.2.8128.dmg
    url "https://github.com/ttscoff/nv/releases/download/#{version.sub(/\-\d+/, "")}/nvALT#{version.no_hyphens}.dmg"
    name "nvALT"
    desc "nvALT 2 is a fork of the original Notational Velocity with some additional features and interface modifications, including MultiMarkdown functionality."
    homepage "https://github.com/ttscoff/nv"

    livecheck do
      url :url
      strategy :github_latest
    end

    auto_updates true
    depends_on macos: ">= :high_sierra"

    app "nvALT.app"

    zap trash: [
      "~/Library/Application Support/nVALT",
      '~/Library/Preferences/net.elasticthreads.nv.plist',
      '~/Library/Caches/net.elasticthreads.nv'
    ]
end
