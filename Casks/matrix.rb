cask "matrix" do
  version "1.0.1"
  sha256 "86a5dbe9e3cddf96e413acf14f66a00b313cd4619c8f5ce5e83d003a4b1a68eb"

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
