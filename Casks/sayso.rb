cask "sayso" do
  version "0.17.2"
  sha256 "9dafe7dcfe3ce477843ed3bbd51ceaf7270080afb6e55536df09b8d56945910a"

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
