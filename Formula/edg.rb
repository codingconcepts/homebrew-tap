class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.0.1"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "7837ff86a438af05266f34f7400ad2b1ea142a3dab4ea053dffe89705af51769"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "ab742609b68d77ca143bcea4c3b7ff0bd3abe063b53f0162152d2448f31abe0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "c25870d604ce6115d7ea3e4a709f5cd314c9e9a6a7754d5b163944e18f84adfe"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "4913238d6485a4f2c52622ad213e38cb52244af9fb356af24f813a3ce77174b9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
