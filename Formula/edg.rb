class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "5.0.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "4229f447e5561b3611a11611ae6f2f1b53f4c95624a61eefb57d16b6f5f3f7b3"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "259b06222d86e5b5dd6fe6a6b17fa012f9c1fdc7aa23781723376e0b62cb451f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "91e6c899cea9efcc0acd9bc509b4f43b7e7552dd31c7216d620ada39551c2048"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "96c6c8d53f3724c043bfbf601db64ddef7aebb0e0574449b408deffe68d3169b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
