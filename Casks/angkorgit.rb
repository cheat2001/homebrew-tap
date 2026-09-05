cask "angkorgit" do
  version "0.10.0"
  sha256 "7ef6c5838986cb64b41d7522c643beb0b6453874b13f0fa35c5996be0778e6d1"

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
