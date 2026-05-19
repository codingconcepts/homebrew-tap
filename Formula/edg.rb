class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "1cea508fe2f6f54d0bcbf984dff66d0f4e725645f824f158682e2b54b17d87a6"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "383f2cce8d87d513968b9e73af1f3c7a853495036e85cd7381f52d4334770de9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "5e573797891799a25448167a2341b87153e2b3254aa7c7c72fe695d9f9125c4e"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "a6c9740756291f76497d23295ba783b4535054e4ee6202bd45c5fcc505576ab0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
