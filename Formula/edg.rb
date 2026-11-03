class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "5.4.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "349904e4cfb0ab289d912f0918baae7c811d4a4dc7a399fe325d4b093cd7e5fb"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "f7b7e879af0a59436f527bab1555d822a6bbee7bb0d60f1f1e6a41e011b0db0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "df77f619fbd8b4eadf5805d5384ce67c23c871e0c21cbdb8f123e871df2d0543"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "8aad7ac3fcc3127d19119c75c1809b3d34923f7946595cf052fc6254ff39f700"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
