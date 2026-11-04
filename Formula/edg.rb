class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "5.5.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "94339d685c37d9f5c89ece7895c419858697268dde3283fe60b6e7b97125c1d9"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "232f34b8e0100d8cb5c5e218e7beabb9c660ff7ce75f6a9e2a63d0e04ffc31f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "9d489b0bd4600a45cec2c2b902885da6d33d6445d289d7f27433a6f03a95c76d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "5e6da787f301c3b0deb8c6abf6d468ac6e497e2c2b1e9e2e3282b8ac6ea27084"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
