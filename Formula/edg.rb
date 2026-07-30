class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.3.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "bdae920e0cd9effdc52b25dd0f5c344ad44f089cbc06cb53592a71cf1c6653f6"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "5f902a7be7f9f533cbf3b1ee42b76985a76321c7f0769b05a6db05a4f07bf514"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "7dce0a33fc4de905469652810991e84033fab284d27c43806f8575c175dda822"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "b281f0012002150f6cf5015b674ec58a6bd4e8c94c331762a718cb04386ed211"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
