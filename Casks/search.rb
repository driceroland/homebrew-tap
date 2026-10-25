cask "search" do
  arch arm: "", intel: "-Intel"

  version "1.0.7"
  sha256 arm:   "a79704b032e2d6316f2a056b5b1abfe7dd9b60effb67ec28bf45ea8d9a61d777",
         intel: "77707798a6ec813ceb61789bb5141b071042fc7106d296bb0aa8fee06a1eb216"

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
