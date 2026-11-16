class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "6.0.1"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "ab1a7e301bb60a1c94b6afddfe722a10f12075d0d619023147872dc4ddcc7405"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "393fa3ac6f7d6b5985020bc0e3ba1dfcbd5b1a0e08215f4b34c351d3c128f570"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "6dde4c5ed3d890df09d51e7d183770ede38fc0f649938aa8907129d7874b3042"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "0e85362bc25279ca0b9ff97d08c31ce49fe3bb24f9a3d530594ae5296d91d207"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
