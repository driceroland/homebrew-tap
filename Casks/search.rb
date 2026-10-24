cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.6"
  sha256 arm:   "c7ec6f1d6c790daf2f193beff8a156736070e90910bdb7c861c1acf2db1ef820",
         intel: "d0890a9968bd506da9b9577fa4039084662164971fd1f318f7c2be9687586bab"

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
