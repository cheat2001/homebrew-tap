cask "angkorgit" do
  version "0.6.2"
  sha256 "80e48447631569c388d176583449b8cf32e3419d87e1b4e5cbc4de70c5b265d4"

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

  caveats <<~EOS
    AngKorGit is not yet notarized with Apple. If macOS reports the app as
    damaged or from an unidentified developer, clear the quarantine flag:

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
