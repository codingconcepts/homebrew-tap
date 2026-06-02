class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.9.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "af9c3befdb633e356ef32290e995e8151c5a2ce8f666239e10cf1a1cd2ebc35c"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "ad44f99b5175c145bde481320e1d9f14a0be446839a828802ffd537b7963af7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "2809a353bd3d19c46e536d192d6f2a4340be337f9fd54060a5d49c312050960f"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "bec7a6e0db30df375558f5e53ad471c87e85641f68d9d3cc76c9ba46770ec1b0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
