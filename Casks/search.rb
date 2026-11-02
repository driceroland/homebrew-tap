cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.8"
  sha256 arm:   "523edc9e0d00159cd3758961f43b7ecdb56fb48ad481372ac0e801b0bada38b5",
         intel: "76e36d7add83e7bfa58d4e98925e71fde1f8309e72dc4c48db010771ff8fd83a"

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
