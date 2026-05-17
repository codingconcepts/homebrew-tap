class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "7a00d0402ac8f9bed7c6d2dace2a07d492fd9ae772d5540fd05f91699481c0b0"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "dcbd0e56c84c82d4bc8adf3e18ebe6a892879dfa341ce4a126e71f6d592f5e90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "31884364dba32fc1ac84c273027cdbfcc8d1fd6afce2ba34112d091d256d7e8d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "69204ddff84eb03c72bb39d5009dffa8bb5d3d8390702d487935c4e8db90c987"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
