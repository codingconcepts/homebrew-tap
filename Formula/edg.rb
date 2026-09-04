class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.8.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "8c0fa9e1755e31d78eed223d3c22be97cfb6dd80bce04581ebd21c07fcc45b1a"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "2fac8371dc5e7c753db2bec6d273996b4e8bfa95e049596c4d0c7aba6a98dabe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "118450200e7b23619b08358b863f6ef8453c2758dabfd2ea74b58e956903e41d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "5dc621f57ade841ee40e5ae06f343a7ae31b24803ef06185a60c7b323ad002a4"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
