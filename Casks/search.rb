cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.9"
  sha256 arm:   "7af6b5fcf4205244cd5ef10921a542bc57dfe7050ee77585670a334e7baab26e",
         intel: "88fb60552b3a7ac2f6bf97e48a8b856373e241587ae83f5c1120fd4f39aa5f86"

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
