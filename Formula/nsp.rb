class Nsp < Formula
  desc "Let someone else drive your slides"
  homepage "https://nextslideplease.run"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-darwin-arm64"
      sha256 "90cded7903cb97fd35869a71de030eef10fc8bea92a90c7b8ecc6dc1756e7e59"
    end
    on_intel do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-darwin-amd64"
      sha256 "1f40186b6393c0d774921bab286b313491fd74f1696c400625d3eeaf4270e8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-linux-arm64"
      sha256 "70fb11b402ff17969167f9f4d3252bac84aeae4453477b9dfb764077b5666f37"
    end
    on_intel do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-linux-amd64"
      sha256 "8ccb68eeb9de4716f7ced78c0aa342cb5b8ece4b51f74e91af5c62d8fbf34573"
    end
  end

  def install
    bin.install stable.url.split("/").last => "nsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nsp version")
  end
end
