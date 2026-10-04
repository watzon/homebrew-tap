cask "sayso" do
  version "0.4.3"
  sha256 "8ad6b4d2693f0490026f175a416690bc0cbc54944c6c8a5c529b5e318e3efd60"

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
