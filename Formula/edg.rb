class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "90af25a42153fb84f5b924c5fde570d00ab86b1893868b6591596e9afda30359"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "03b28fd4bf4084036bb7d8338a75fe5a4c7a7b17b2297dbd19b709fdf5307022"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "5aa79f0b6f3f4c945e9d44fecaffb89c00b8fc4ef36e16225adcf178b767c4de"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "3a8dc03d4de0d8c84247bb1eedc027cd75a3646428ab3443836bb63962bb5624"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
