class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "8987c9d9491ddcbd48e6f0a68e4a9a3c23d4d201a7b578e7eb3ff6d6ca9f56b1"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "42a04b7922e3be4d4cd3f9f66f7119f3d78c9556bffc551e731079cf789a2070"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "ec9dc615d2f23952021fe15458a5a7a043ff3bb4943c911e279218c490a85b6d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "2bda8dfecddb73ba042d681b1e2c3a717a8720a1e20c9b26eb339921d64e8b79"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
