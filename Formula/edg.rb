class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "d469a913b9bb01949aa9ec78bc67fbef3b4f557c907f42a5df775e90e6b8dddd"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "645c609048de0e062f9acf9389bc61632f6123cbfacf9a59287667c5f2c070c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "7e6aadcc0a28c6e4da75deb55d314535c4bff41b65141a171746b5d8d3930514"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "e04c4270f5bf527fa475ef2cbd135849a31805134dadda4b9b17a38e214a4d03"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
