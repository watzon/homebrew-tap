cask "sayso" do
  version "0.16.0"
  sha256 "a9c6c5b386600ee2da56f20560d72762960ae5607796791f071bcff0b3572abb"

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
