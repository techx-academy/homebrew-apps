cask "matrix" do
  version "1.0.5"
  sha256 "8eec2acdf37c86e028a1652491ba22117087524d584e054657b35cab6492f0d5"

  url "https://download.matrix.build/mac/#{version}/Matrix-#{version}-arm64.dmg"
  name "Matrix"
  desc "Workspace for coordinating AI agents"
  homepage "https://matrix.build/"

  livecheck do
    url "https://download.matrix.build/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Matrix.app"

  uninstall quit: "com.matrixai.app"

  zap trash: [
    "~/Library/Application Support/com.matrixai.app",
    "~/Library/Application Support/Matrix",
    "~/Library/Caches/com.matrixai.app",
    "~/Library/Caches/Matrix",
    "~/Library/HTTPStorages/com.matrixai.app",
    "~/Library/HTTPStorages/com.matrixai.app.binarycookies",
    "~/Library/Preferences/com.matrixai.app.plist",
    "~/Library/Saved Application State/com.matrixai.app.savedState",
    "~/Library/WebKit/com.matrixai.app",
  ]
end
