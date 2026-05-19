class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "d6307cca699a3cd2594c34578bc6796a3f1c4f1934c97a61656d9be15aa78564"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "750fbce7c3618a0cbe73696ba45651a6cf3c4b197fba502c806e4ec0da55a5bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "6711726ee74c49e8b4c46529f3a6f833a106d876ed19863705a184d04d978082"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "f9b93a5658c695423d2c23d94dd185a216bf3f970cd061aedc06e65eea86c77a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
