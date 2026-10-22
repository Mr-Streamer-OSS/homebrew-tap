cask "mr-streamer" do
  version "0.0.18"
  sha256 "a68fb36b0d4e71b8940a457aa46658883e36ee49205f52e8fc832220971749ef"

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
