cask "fafarunner" do
  version "3.2.1.396"
  sha256 "da8bb8f1cf9fba2af365acfdbfe95b045f89fd6f26e965cad3358cd998b0cfc7"

  url "https://github.com/fafarunner/fafarunner/releases/download/v#{version}/FaFaRunner-#{version}-macos-universal.dmg",
      verified: "github.com/fafarunner/fafarunner/"
  name "FaFa Runner"
  desc "Enjoy smooth gameplay, stunning graphics, and endless fun"
  homepage "https://fafarunner.com/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :big_sur

  app "FaFa Runner.app"

  zap trash: [
    "~/Library/Application Support/FaFa Runner",
    "~/Library/Caches/com.chenyifaer.fafarunner",
    "~/Library/Caches/FaFa Runner",
    "~/Library/Preferences/com.chenyifaer.fafarunner.plist",
    "~/Library/Saved Application State/com.chenyifaer.fafarunner.savedState",
  ]
end
