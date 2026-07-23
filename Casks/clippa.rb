cask "clippa" do
  version "1.0.13"
  sha256 "eeebdf7e827dce02600dd124ad32c89e629abf47e03f1d49719d0574a2c0a43e"

  url "https://github.com/Vaniawl/Clippa/releases/download/v#{version}/Clippa.app.zip",
      verified: "github.com/Vaniawl/Clippa/"
  name "Clippa"
  desc "Private clipboard history paste panel"
  homepage "https://vaniawl.github.io/Clippa/"

  depends_on macos: :tahoe

  app "Clippa.app"

  zap trash: [
    "~/Library/Application Support/Clippa",
    "~/Library/Preferences/app.clippa.Clippa.plist",
    "~/Library/Preferences/com.ivandovhosheia.Clippa.plist",
    "~/Library/Preferences/io.github.vaniawl.Clippa.plist",
  ]
end
