class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "30908a76ede9e647e9083ae7d097007fc5c037a8e105fa3987799716c1ec3e64"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "f4ea335d605a9c561e1ba14133c2cb4e71a1cc638ba75ec53fc9d3697bc9fbcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "e9f190e007e4d988352c4c81c9ba4082e1deab88519d5bfe707b028799dca812"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "27d30a8d8cf72e4754cc6bf3020bf6462c987afb52ac37d174f6503eca0cded9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
