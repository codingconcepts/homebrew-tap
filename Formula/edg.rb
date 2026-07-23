class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "4.1.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "f7a4044e7f9ae46eca2b32c312521f38209cdd0134fdb2e16d66cfae338fcfb2"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "9aa6c20e1fbf9123cdc82dd9ad84054523bfd19f5ca642bd7b36c86a9aebdf2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "4a821d401b0e1fa31f2cf8e0a022281c35bfcbd4a52b2bb852efa8c66051fc20"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "598249ad42a9caa9e7f5c3b25f035076c9dcc1f8e6f17ca16095f5786562a96d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
