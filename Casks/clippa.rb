cask "clippa" do
  version "1.0.12"
  sha256 "08f047f9614868caecfce271f72492915d263f8f1c47c0c6be960701df7805c3"

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
