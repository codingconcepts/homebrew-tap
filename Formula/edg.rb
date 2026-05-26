class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.5.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "3699717ec272e02a7fdebc19e09f9a04eebf8cbed0f7ae922d9435e6cfb0e10f"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "fd188da337ecc21a5242ed643481794b99e7aeddb0379b7c24e8a021faa604d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "55af313df6c82f9d99703ca01c3c9508f1db0b337a4d74db50b0a748d2fb428d"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "70ad6a0f0323e76d0ee29ba33b338cdeb428b48117f7cf07d80d77edbd81a39f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
