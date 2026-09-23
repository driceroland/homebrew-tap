cask "search" do
  version "1.0.1"
  sha256 "2bc39f406a7eab578caaae4316300bcd23279e6a90a52fa27cae7d7e672e66f2"

  url "https://github.com/driceroland/Search/releases/download/v#{version}/Search.dmg",
      verified: "github.com/driceroland/Search/"
  name "Search"
  desc "Browser with nothing in the way"
  homepage "https://officecommun.com/search"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

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
