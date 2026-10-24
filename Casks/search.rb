cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.6"
  sha256 arm:   "a0332faf6eeadd2ee8a7f2af2e05d95c9689ba72081688ae7e27628c9c24e4e7",
         intel: "828dfb544408832e7d1b9cfd447679dc5cd8c55968e06dc853a430aced4dd3a0"

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
