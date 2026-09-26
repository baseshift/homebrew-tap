class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.3.0-ec64e49052a7"
  url "https://dl.baseshift.com/brancher/brancher-0.3.0-ec64e49052a7-darwin-arm64"
  sha256 "16f256df12252d0d113e687f42b7646f598d4770ccd1c6daa5daa788167ebe92"

  def install
    bin.install "brancher-0.3.0-ec64e49052a7-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.3.0-ec64e49052a7", shell_output("#{bin}/brancher version")
  end
end
