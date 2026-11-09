cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.11"
  sha256 arm:   "494ecc2dc15b33160860b3e4b5cc69091ab70bb6da96a9eef7b4ccc2c88c731b",
         intel: "96f67d87e249da67ee5d4988fa1209d0a1ec22498d178412c0f844495bb2ec68"

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
