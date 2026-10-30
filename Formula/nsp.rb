class Nsp < Formula
  desc "Let someone else drive your slides"
  homepage "https://nextslideplease.run"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-darwin-arm64"
      sha256 "f4e4d3f650da2b115db6a0b74c19a6f995f968d89dbcf8c6fbd0747ac71ad31a"
    end
    on_intel do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-darwin-amd64"
      sha256 "f878ac0bd199ba2da9b1808acd52e49800bfdfe21600ca14f43b2ae0ba985cb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-linux-arm64"
      sha256 "582fe32b90b65ee8c03567566683ee5bfa316dcdb93931cbbe1e5d76d913027f"
    end
    on_intel do
      url "https://github.com/codingconcepts/next-slide-please/releases/download/v#{version}/nsp-linux-amd64"
      sha256 "e748fd70ad14c73a293e8e09e3c4c5955b73d60865ee4f8fdb81d4e8ba827e5e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "nsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nsp version")
  end
end
