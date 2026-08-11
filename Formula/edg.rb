class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.7.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "9b3cf2a69a82156f79fc0cf1a7993b2cf109f4f3a5079a75e1f1b95e65e112fd"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "01d7fd0479c84d39bc496eba8e4290f378b87a0e640cc220bcd1e277c94bc661"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "f18e7e1df7b058797743f344977c32ef98354e50a1e4a41b145eed65fa475a7a"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "0a87ffca6f8747142ad04f8b0dc06881c4a1191f447795f0c2b005ca763d731a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
