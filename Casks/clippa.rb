cask "clippa" do
  version "1.0.10"
  sha256 "ad4bbe949e5f385826d8e9541e7d97a3e3a6164932516086be03ec7c03260364"

  url "https://github.com/Vaniawl/Clippa/releases/download/v#{version}/Clippa.app.zip",
      verified: "github.com/Vaniawl/Clippa/"
  name "Clippa"
  desc "Private clipboard history paste panel"
  homepage "https://vaniawl.github.io/Clippa/"

  depends_on macos: :tahoe

  app "Clippa.app"

  zap trash: [
    "~/Library/Application Support/Clippa",
    "~/Library/Preferences/io.github.vaniawl.Clippa.plist",
    "~/Library/Preferences/com.ivandovhosheia.Clippa.plist",
  ]
end
