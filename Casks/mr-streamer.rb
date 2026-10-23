cask "mr-streamer" do
  version "0.0.19"
  sha256 "c7b9adc36abc538e23ca38530fb896c388530efff6bbdb68b255ab0928cc95a6"

  url "https://github.com/Mr-Streamer-OSS/MrStreamer/releases/download/v#{version}/Mr-Streamer-#{version}-mac-arm64.dmg"
  name "Mr. Streamer"
  desc "IPTV player"
  homepage "https://mrstreamer.app/"

  livecheck do
    url :url
    regex(/^v?(\d+\.\d+\.\d+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Mr. Streamer.app"
end
