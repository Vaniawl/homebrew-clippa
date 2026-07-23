cask "clippa" do
  version "1.0.9"
  sha256 "af85fca8472e2246729141c68ecc77cd7f2baa6f57fdee152f07e238054f24d8"

  url "https://github.com/Vaniawl/Clippa/releases/download/v#{version}/Clippa.app.zip",
      verified: "github.com/Vaniawl/Clippa/"
  name "Clippa"
  desc "Private macOS clipboard history paste panel"
  homepage "https://vaniawl.github.io/Clippa/"

  depends_on macos: ">= :tahoe"

  app "Clippa.app"

  zap trash: [
    "~/Library/Application Support/Clippa",
    "~/Library/Preferences/com.ivandovhosheia.Clippa.plist",
  ]
end
