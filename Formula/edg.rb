class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "6b19437fa07aef03731d3e21f4e22ef8e19b896372bdc75251762c6f54e69004"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "1a60b3797bdb0d07decfd3aee8e4728be031dfb19861c5de4f84eaa9f063386e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "faa88d49bd20a47d01152aef1086d9e15dc098151b89a388fb3ab27e5dfe26cb"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "88c3a779d1c101f258411e252c1f17023acadc136f03e8c9135f26489d02f152"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
