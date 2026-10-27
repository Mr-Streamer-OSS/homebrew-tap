cask "mr-streamer" do
  version "0.0.21"
  sha256 "ee165400523bc73476617a2e94bb6d6d1533b7e292ad1cd4459943798a6523b1"

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
