cask "fafarunner" do
  version "3.1.0.393"
  sha256 "2e8872ff3a61973caf5b649a259ed58c6941e69a588fa8836135953d84757729"

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
