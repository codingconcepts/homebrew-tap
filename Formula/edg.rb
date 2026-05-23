class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "2cd33553751134bda3b6a178cf82e13a44bbfd8f08c7d5e595cf1fb037ee0f13"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "fc19ef0797e2d178457d2f22805b10cc6df3a718df9193bd41568d20d5a84e0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "4fb2793389bf5d4570013c5cdeccde0e10b7b20a0622a69fa700906ded2e509a"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "5065853cd23a7a69846aeb9530220d8fc34e158eb6da0141ce4bd2389c9c26b5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
