class Edg < Formula
  desc "Realistic test data generator"
  homepage "https://github.com/codingconcepts/edg-releases"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-arm64"
      sha256 "bc96612867244728eac812d691120b08dd9cab0998d129170d206fe54872a352"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-darwin-amd64"
      sha256 "83fdc6ea533c871e871eafd3e652bd6bc83c66849f4923409e27b3af40168bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-arm64"
      sha256 "69f42af2670384df4b4b467787eba1b75dcd802ae4a8c9a40e60d68d58921046"
    end
    on_intel do
      url "https://github.com/codingconcepts/edg-releases/releases/download/v#{version}/edg-linux-amd64"
      sha256 "6c68eec49237739ec0791c5acb8a633c3ee88c7f47924a1e2f0012fdaa769980"
    end
  end

  def install
    bin.install stable.url.split("/").last => "edg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edg version")
  end
end
