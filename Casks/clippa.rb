cask "clippa" do
  version "1.0.11"
  sha256 "7140efb8e5fbea1890fbf12a870eb5ac2b5571ea4f1133d599cfffa17b087105"

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
