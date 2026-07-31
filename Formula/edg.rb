class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.4.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "57a82ac7dab858802adbef50940dbe59aa97ad2572f67fcdad1d2cdb0c753a0d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "92a256ec0e300837d37d73d6c38f55a23d1e4709c28f01d0387c74b332528fac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "f767ab24a96627de25e21995ae2f7f3b3ca54b13e70a74a0455366fa8e98a603"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "13a2a45879ad5f675ddaa423f3048847d5cf4f4ded86f83f56f0e8e4b75f082f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
