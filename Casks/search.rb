cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.5"
  sha256 arm:   "4c750f505cf108bf06fc3be256abaeab3c0dfa1a587bec7036f1bbe732466ea1",
         intel: "9feab786e545b9f4a40b68bd985cd1f24956b772abd1bdf9e91198e3812b1b64"

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
