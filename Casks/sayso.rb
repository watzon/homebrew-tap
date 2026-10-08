cask "sayso" do
  version "0.7.0"
  sha256 "d45bd25658d2081480d5aa6d80b7341af908f81731260a9e9433e52677e1a734"

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
