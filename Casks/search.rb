cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.10"
  sha256 arm:   "4834619ce5fd76ccea32861d750756e32ab01065d9be2e965cecbf91b2b4c4b8",
         intel: "d75b3896c622d98576810494ccd009b1986325a071b882a612685488859f3f63"

  url "https://github.com/driceroland/Search/releases/download/v#{version}/Search#{arch}.dmg"
  name "Search"
  desc "Browser with nothing in the way"
  homepage "https://officecommun.com/search"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Search.app"

  zap trash: [
    "~/Library/Application Support/Search",
    "~/Library/Caches/com.officecommun.search",
    "~/Library/HTTPStorages/com.officecommun.search",
    "~/Library/HTTPStorages/com.officecommun.search.binarycookies",
    "~/Library/Preferences/com.officecommun.search.plist",
    "~/Library/WebKit/com.officecommun.search",
  ]
end
