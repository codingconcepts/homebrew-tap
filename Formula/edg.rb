class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.7.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "9d3c2e4793feefe7cea5526ce8e52f6ac3e4d2910265dd4a9125e16b07d5ff3d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "c2b3081c00ae2065fa01d04f18fb80adf09fe771d790207d0cf4be36ed3cee81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "eaac74bd5d1a071980f94bd0e1d467918541e1c4b419264a17ee07fc926020a3"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "7f31f596072b165a592fb3dcf3e9292b7254c6e3e5318459910ed0a3d2868f86"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
