cask "sayso" do
  version "0.5.0"
  sha256 "28f3ed3bc9dfaa225a3f46e13a24dba308b75e704f8134daf7ef9e45f3c1ae72"

  url "https://github.com/watzon/sayso/releases/download/v#{version}/Sayso-#{version}-macos-arm64.dmg"
  name "Sayso"
  desc "Local voice dictation into any app"
  homepage "https://justsayso.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sayso.app"

  zap trash: [
    "~/Library/Application Support/Sayso",
    "~/Library/Caches/Sayso",
  ]
end
