class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "e59fa44359951f4fa2e716253591feea633cbaf1394e9183f633a3e57dd037fd"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "110715a24779eab60d34e635d793ab0ce3749d4142d0e86a9bd98d7d0a23920e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "f5b172fca316a17a80e2e0692685c03fd2a8ddeaf6c2cae5cb89538bd96981e7"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "5f027ab978939e0c4d36eba07eb71190d10f1ef22b0d7144f3977e53e0f6f343"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
