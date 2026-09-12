cask "angkorgit" do
  version "0.13.0"
  sha256 "5ade4d3a8a8d86a7d31cfc0bae9bde62876334cb4be0e822bf74aaf331cdbdfc"

  url "https://github.com/cheat2001/angkorgit/releases/download/v#{version}/AngKorGit_#{version}_universal.dmg"
  name "AngKorGit"
  desc "Fast, lightweight, beautiful Git client"
  homepage "https://angkorgit.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "AngKorGit.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AngKorGit.app"]
  end

  caveats <<~EOS
    The Gatekeeper quarantine flag is cleared automatically after install
    (AngKorGit is open source but not yet notarized with Apple). If macOS
    still reports the app as damaged, run:

      xattr -cr /Applications/AngKorGit.app
  EOS

  zap trash: [
    "~/Library/Application Support/dev.angkorgit.app",
    "~/Library/Caches/dev.angkorgit.app",
    "~/Library/Preferences/dev.angkorgit.app.plist",
    "~/Library/Saved Application State/dev.angkorgit.app.savedState",
    "~/Library/WebKit/dev.angkorgit.app",
  ]
end
